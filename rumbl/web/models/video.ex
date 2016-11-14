require IEx;
defmodule Rumbl.Video do
  use Rumbl.Web, :model

  schema "videos" do
    field :url, :string
    field :title, :string
    field :description, :string
    belongs_to :user, Rumbl.User
    belongs_to :category, Rumbl.Category

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:user_id, :category_id, :url, :title, :description])
    |> validate_required([:url, :title, :description])
  end

  def with_all_assocs(query \\ __MODULE__) do
    IEx.pry
    from q in query, preload: [
      {:user, []},
      {:category, []}
    ]
  end

end
