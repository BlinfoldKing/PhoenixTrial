defmodule AlchemistChecklist.User do
  use AlchemistChecklist.Web, :model

  schema "users" do
    field :email, :string
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :password])
    |> validate_format(:email, ~r/@/)
    |> validate_required([:email])
  end
end
