# frozen_string_literal: true
require 'logger'
require 'sinatra'
require 'sequel'
require 'sinatra/jsonapi'

require 'sinja/sequel/helpers'

DB = Sequel.connect('postgres://localhost/cl-api_development')
DB.extension(:freeze_datasets)
DB.extension(:pagination)

DB.optimize_model_load = true

DB.loggers << Logger.new($stderr) if Sinatra::Base.development?

Sequel::Model.plugin :tactical_eager_loading

class MailLog < Sequel::Model
  many_to_one :category
  many_to_one :company
end

class Category < Sequel::Model
  one_to_many :mail_log
end

class Company < Sequel::Model
  one_to_many :mail_log
end

Sequel::Model.finalize_associations
Sequel::Model.freeze

class BaseSerializer
  include JSONAPI::Serializer
end

class MailLogSerializer < BaseSerializer
  attributes :number, :in_or_out, :document_date_on, :received_on, :external_number, :comment, :value_net, :value_vat

  has_one :category
  has_one :company
end

class CategorySerializer < BaseSerializer
  attributes :name

  has_many :mail_logs
end

class CompanySerializer < BaseSerializer
  attributes :name, :icon

  has_many :mail_logs
end

class MailLogs < Sinatra::Application
  register Sinatra::JSONAPI

  resource 'mail-logs' do
    index do
      MailLog.dataset
    end

  end
end

freeze_jsonapi
