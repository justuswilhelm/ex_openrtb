defmodule ExOpenRTB.Decoder.Helper do
  def update_if_has_key(map, key, initial, fun) do
    if Map.has_key? map, key do
      Map.update(map, key, initial, fun)
    else
      map
    end
  end

  def map_decoder(values, key, as) do
    values |> update_if_has_key(key, nil, &(Poison.Decode.decode(&1, as: as)))
  end

  def map_const(values, key, constant) do
    values |> update_if_has_key(key, nil, constant)
  end

  def map_const_list(values, key, constant) do
    values |> update_if_has_key(key, nil, fn value ->
      case value do
        nil -> nil
        _ -> Enum.map value, constant
      end
    end)
  end

  def map_default(values, key, initial) do
    values |> update_if_has_key(key, initial, &(&1))
  end

  def map_bool(values, key, initial \\ true) do
    values |> update_if_has_key(key, initial, fn value ->
      case value do
        1 -> true
        0 -> false
      end
    end)
  end
end
