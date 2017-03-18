defmodule PlugBench.Repo.Migrations.CreateCategories do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string
      timestamps()
    end

    create table(:companies) do
      add :name, :string
      add :icon, :string
      timestamps()
    end

    create table(:mail_logs) do
      add :name, :string
      add :number, :string
      add :in_or_out, :integer
      add :document_date_on, :utc_datetime
      add :received_on, :utc_datetime
      add :external_number, :string
      add :comment, :string
      add :value_net, :float
      add :value_vat, :float
      add :lp, :integer
      timestamps()
    end

    alter table(:mail_logs) do
      add :category_id, references(:categories)
      add :company_id, references(:companies)
    end
  end
end
