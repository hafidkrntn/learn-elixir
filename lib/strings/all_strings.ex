defmodule Allstrings do
  def trim_string(value) do
    String.trim(value)
  end

  def first_letter(value) do
    String.trim(value)
    |> String.first()
  end

  def initial(value) do
    "#{String.capitalize(value) |> first_letter()}."
  end

  def initials(full_name) do
    list = String.split(full_name)
    Enum.map(list, fn name ->
      initial(name)
    end)
    |> List.to_string()
    |> String.trim()
  end

  def build_saucer() do
    """

                        %%%%%%%%%%%%%%%%%%%%
                   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
      ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
    ************************************************************
        ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
           ,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,
                ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

    """
  end
end
