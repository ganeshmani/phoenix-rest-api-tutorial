defmodule UsersApi.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :email, :string
      add :role, :string
      add :address, :string

      timestamps()
    end

    create unique_index(:users, [:email])
  end
end
