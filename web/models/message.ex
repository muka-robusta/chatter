defmodule Chatter.Message do
	use Chatter.Web, :model

	schema "message" do
		field :text, :string

		belongs_to :user, Chatter.User
		belongs_to :topic, Chatter.Topic

		timestamps
	end

	def changeset(struct, params \\ %{}) do
		struct 
		|> cast(params, [:text])
		|> validate_required([:text])
	end
end