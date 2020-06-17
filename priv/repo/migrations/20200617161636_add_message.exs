defmodule Chatter.Repo.Migrations.AddMessage do
  use Ecto.Migration

  def change do
  	create table(:message) do
  		add :text, :string
  		add :user_id, references(:users)
  		add :topic_id, references(:topic)

  		timestamps
  	end
  end
end
