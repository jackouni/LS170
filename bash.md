# Relevant Commands for This Course

## `read`

This is a command that is used to obtain user input. `read` can be thought of as the (nearly) equivalent `gets` keyword in Ruby.

When using `read` in a command, the variable name that will reference the user's response follows the command.

**For Example:** `read name`

This will store the user's input the varaible `$name`.

```
  read name  # User input is referenced by `$name`
  Jack       # User's input
  echo $name # Outputs: Jack
```

If multiple variable names follow `read`, `read` will assign each piece of input delimited by whitespace characters to each variable.

**Example to demonstrate:**

```
  read value1 value2 value3  
  Hello World! More input...  # User's input
  echo $value1                # Hello
  echo $value2                # World!
  echo $value3                # More input...
```

# Bash Scripting Files

Users can execute their own custom bash scripts.

The file extension for a bash file is `.sh`

## Running a File in Shell

## Conditionals

To create a conditional `if` statement, the conditional is opened with an `if` and closed with a `fi`.

Following `if` is the conditional expression.

Underneath that there's the `then` keyword with the code you want to execute following underneath that.

Then the `if` statement is closed with `fi`.

**For example:**

```bash
name="Jared"

if [[ $name == "Jared" ]]
then
  echo $name
fi
```

When executing the `.sh` file above, `Jared` will be outputted to the terminal.

Bash also can use `else if` and `else` branches. Here's how to implement those:

```bash
integer=15

integer=21

if [[ $integer < 10 ]]
then
  echo $integer is less than 10
elif [[ $integer > 20 ]]
then
  echo $integer is greater than 20
else
  echo $integer is between 10 and 20
fi
```

The above bash file will output: `21 is greater than 20`.

## Functions

Functions in Bash can be declared by giving a name for the function followed by parenthesis and the code of the function contained between curly braces.

**Here's an example to demonstrate:**

```bash
greet () {
  echo "Hello $1"
}

greet "Peter"
```

**The above code when exectuted will output:** `Hello Peter`

In bash, functions by default of lenient in arity, meaning, you can pass any number of arguments to it a function and it will not throw an error at you. In bash, arguments can be accessed via `$1`, `$2`, `$3`, and so on...

The first argument passed is referenced by `$1` and each subsequent argument is referenced by following numbers `$2`, `$3`, and so on...

**To demonstrate:**

```bash
greet () {
  echo "Hello $1"
  echo "Hello $3"
  echo "Hello $2"
}

greet "Peter" "Paul" "Jared"
```

**The above file, when executed will output:**
```
Hello Peter
Hello Jared
Hello Paul
```