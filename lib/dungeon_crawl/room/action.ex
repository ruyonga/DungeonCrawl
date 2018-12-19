defmodule DungeonCrawl.Room.Action do

  alias DungeonCrawl.Room.Action
  @type t :: %Action{id: atom, label: String.t }

  defstruct label: nil, id: nil

  def forward, do: %Action{id: :forward, label: "Move Forward"}
  def rest, do: %Action{id: :reset, label: "Take a better look and reset"}
  def search, do: %Action{id: :search, label: "search the room"}


  defimpl String.Chars do
    def to_string(character), do: character.label
  end
end
