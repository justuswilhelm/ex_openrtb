defmodule ExOpenRTB.Decoder.Macro do
  defmacro __using__(_opts) do
    quote do
      import unquote(__MODULE__)
    end
  end

  defmacro defdecode(modules) do
    modules |> Enum.map(fn module ->
      # Le Haxx
      # Turn module atom into string, lowercase it, turn back into atom
      {_, _, [module_atom]} = module
      atom = module_atom
             |> Atom.to_string()
             |> String.downcase()
             |> String.to_atom()
      quote do
        def decode!(unquote(atom), raw) do
          Poison.decode!(raw, as: %ExOpenRTB.unquote(module){})
        end
      end
    end)
  end
end

defmodule ExOpenRTB.Decoder do
  use ExOpenRTB.Decoder.Macro

  ExOpenRTB.Decoder.Macro.defdecode [
    Source,
    Regs,
    Imp,
    Metric,
    Banner,
    Video,
    Audio,
    Native,
    Format,
    Pmp,
    Deal,
    Site,
    App,
    Publisher,
    Content,
    Producer,
    Device,
    Geo,
    User,
    Data,
    Segment,
    Bid,
    SeatBid,
  ]
end
