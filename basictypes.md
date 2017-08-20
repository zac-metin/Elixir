use iex to enter elixir commands in terminal

i for inspect

# Numbers

/ operator always returns a float

rem (10,5) is same as JS 10 % 5

no limit on number size

# Atoms

A constant where its name is its value as well

Indicated by colon

:thisisanatom

:"this is an atom" // has whitespace

:ok atom in tuple {:ok, content} if no error, :error atom in error tuple {:error, message} if error

No boolean type, only boolean atoms, :true, :false

:nil atom, seems to be same as null

# Strings

a <> b concats a and b

"Hello #{name}" is same as JS ${name}

In Elixir strings are binaries.

<<0>> is a null byte

# Tuples

Stores a few pieces of data.

elem(tuple, idx) returns the value at that index

put_elem(tuple, idx, new value) sets a new tuple with the new value

In Elixir data is immutable.

In elixir = is not an assignment operator. It is a match operator.

_ tells elixir we don't care about that value when matching.

# Lists

Using [ ] and separate values with ,

Each element points to the next element

List.insert_at(listname, idx, value)

# Immutability

Elixir rebinds variables to new data, but uses the same memory

# Maps

Key - Value pairs, only one instance of each key.

emptymap = %{}

newmap = %{key => value, key => value}

map[key] returns value as does map.key
