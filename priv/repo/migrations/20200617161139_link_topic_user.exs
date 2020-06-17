defmodule Chatter.Repo.Migrations.LinkTopicUser do
  use Ecto.Migration

  def change do
  	alter table(:topic) do
  		add :user_id, references(:users)
  	end
  end
end
