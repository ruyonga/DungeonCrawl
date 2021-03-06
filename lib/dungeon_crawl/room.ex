defmodule DungeonCrawl.Room do
  alias DungeonCrawl.Room
  alias DungeonCrawl.Room.Triggers
  import DungeonCrawl.Room.Action

  defstruct description: nil, actions: [], trigger: nil

  def all,
    do: [
      %Room{
        description: "You found  a quiet place, Looks safe for a litttle nap",
        actions: [forward()],
        trigger: Triggers.Exit
      },
      %Room{
        description: "You can see an eneymy blocking your path",
        actions: [forward()],
        trigger: Triggers.Enemy
      }
    ]
end
