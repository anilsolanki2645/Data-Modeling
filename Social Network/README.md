# Social Network Database Schema

## Overview

This project implements a simple social networking database schema using SQL. The schema includes tables for users, posts, and comments, allowing users to create accounts, make posts, and comment on posts.

## Database Structure

- **Users Table (`users`)**:
  - `user_id`: Primary key, auto-incremented integer.
  - `username`: VARCHAR(50), stores the username of the user.
  - `email`: VARCHAR(100), stores the email address of the user.
  - `password`: VARCHAR(100), stores the hashed password of the user.
  - `created_at`: TIMESTAMP, records the creation timestamp of the user.

- **Posts Table (`posts`)**:
  - `post_id`: Primary key, auto-incremented integer.
  - `user_id`: Foreign key referencing the `user_id` in the `users` table.
  - `title`: VARCHAR(255), stores the title of the post.
  - `content`: TEXT, stores the content of the post.
  - `created_at`: TIMESTAMP, records the creation timestamp of the post.

- **Comments Table (`comments`)**:
  - `comment_id`: Primary key, auto-incremented integer.
  - `post_id`: Foreign key referencing the `post_id` in the `posts` table.
  - `user_id`: Foreign key referencing the `user_id` in the `users` table.
  - `comment`: TEXT, stores the content of the comment.
  - `created_at`: TIMESTAMP, records the creation timestamp of the comment.

## Data Model Type

The data model used in this project is a **relational schema** or **entity-relationship model**. Each table represents a different entity (users, posts, comments), and relationships between them are defined through foreign keys.

## Importance of Data Modeling

Data modeling is crucial for designing databases that accurately represent real-world entities and their relationships. Well-designed schemas ensure data integrity, minimize redundancy, and optimize query performance. By defining tables, fields, and relationships, data modeling provides a structured framework for organizing and accessing data, enabling developers to build robust and scalable applications.
