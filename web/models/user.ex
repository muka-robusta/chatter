defmodule Chatter.User do
	use Chatter.Web, :model

	schema "users" do
		field :username, :string
		field :email, :string
		field :provider, :string
		field :token, :string

		has_many :topic, Chatter.Topic
		has_many :message, Chatter.Message
	end

	def changeset(struct, params \\ %{}) do
		struct 
		|> cast(params, [:username, :email, :provider, :token])
		|> validate_required([:username, :email, :provider, :token])
	end
end