defmodule Allstrings do
  @moduledoc """
  This module provides functions for working with strings.
  """
  @doc """
  Returns the first letter of a string.

  # Examples

  iex> Allstrings.first_letter("Hello, world!")
  "H"


  """
  def trim_string(value) do
    String.trim(value)
  end

  @doc """
  Return the first letter of strings

  # Examples

  iex> Allstrings.initial("John Doe")
  "J."

  """
  def first_letter(value) do
    String.trim(value)
    |> String.first()
  end

  @doc """
  Return the initial of a full person name

  # Examples

  iex> Allstrings.initial("John Doe")
  "J."


  """
  def initial(value) do
    "#{String.capitalize(value) |> first_letter()}."
  end

  @doc """

  # Examples

   iex> Allstrings.initial("John Doe")
  "J."
  """
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
