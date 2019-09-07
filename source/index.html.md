---
title: API Reference

search: true
---

# Introduction

I want to learn the Rust programming language, but have always found it challenging to go through chapters upon chapters of text.
This page gives concise Rust examples, alongside brief explanations, to teach the main ideas of the language as easily as possible.

This website is based on [Slate](https://github.com/slatedocs/slate), and is inspired by [Clojure by Example](https://kimh.github.io/clojure-by-example/).

# Hello World

```rust
fn main() {
    println!("Hello, world!");
}
```

> Hello, world!

This is a simple Hello World application written in Rust. From this point onwards, it's assumed that all code happens inside the `main()`
funtion.

# Variables

## Assignment

```rust
let x = 1;
```

> 1

```rust
let x = 1;
x = 2;
```

> error[E0384]: cannot assign twice to immutable variable `x`

```rust
let mut x = 1;
x = 2;
```

> 2

```rust
let x = "one";
let x = 2;
```

> 2

Variables are created as read-only by default. You can make them mutabel by using the `mut` keyword.

Immutable variables can be _shadowed_ using a second `let` statement. This reuses the variable name, while
discarding the previous value.

## Types

```rust
let x = 1_000;
```

> Type of `x` is an undetermined "integer"

```rust

let x : u64 = 18446744073709551615;
```

> Type of `x` is 64 bit unsigned int

```rust
let x = 1_000_i32;
```

> Type of `x` is 32 bit signed int

The type is inferred, but can be specified manually. Common types are signed integers
(`i8`, `i16`, `i32`, `i64`, `i128`), unsigned integers (`u8`, `u16`, `u32`, `u64`, `u128`),
and integers whose size depend on the system architecture and are used for working with
memory (`isize`, `usize`).

Other basic types are `f32`, `f64`, `bool`, `char`.

## Const

```rust
const PI : f64 = 3.1415926535;
```

> 3.141592653

```rust
const TAU : f64 = PI * 2.0;
```

> 6.28318531

```rust
const G : f64 = 9.8_f64.ceil();
```

> error[E0015]: calls in constants are limited to constant functions, tuple structs and tuple variants

Const variables are intended to never change. They can not use `mut`, and _must_ include a type. They may also
only be set to constant expressions.
