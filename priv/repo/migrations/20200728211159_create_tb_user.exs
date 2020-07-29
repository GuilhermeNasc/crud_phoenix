defmodule UserApi.Repo.Migrations.CreateTbUser do
  use Ecto.Migration

  def change do
    create table(:tb_user) do
      add :name, :string
      add :email, :string

      timestamps()
    end

  end
end
