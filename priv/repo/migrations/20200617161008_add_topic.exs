defmodule Chatter.Repo.Migrations.AddTopic do
  use Ecto.Migration

  def change do
	create table(:topic) do
  		add :title, :string
  		add :hash, :string
	end

  	create unique_index(:topic, [:hash])
  end
end
