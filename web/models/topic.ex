defmodule Chatter.Topic do
	use Chatter.Web, :model

	schema "topic" do
		field :title, :string
		field :hash, :string

		belongs_to :user, Chatter.User
		has_many :message, Chatter.Message

	end

	def changeset(struct, params \\ %{}) do
		struct 
		|> cast(params, [:title, :hash])
		|> validate_required([:title, :hash])
		|> unique_constraint(:hash)
	end

end