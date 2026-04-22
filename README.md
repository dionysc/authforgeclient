# AuthForge Client (Flutter)

Mobile client for **AuthForge API**, a production-grade authentication system built with FastAPI.

This project demonstrates a **real-world mobile architecture**, secure authentication flows, and clean code practices using Flutter.

---

## Overview

AuthForge Client is a scalable Flutter application that integrates with a JWT-based authentication backend.

It includes:

* User registration & login
* Secure token storage
* Automatic token refresh
* Protected routes
* Clean architecture

---

## Tech Stack

* **Flutter (latest stable)**
* **Dart**
* **Riverpod (state management)**
* **Dio (HTTP client with interceptors)**
* **Flutter Secure Storage**
* **Freezed & JSON Serializable**

---

## Architecture

The project follows **Clean Architecture principles**:

lib/
core/ → shared logic (network, storage, utils)
features/ → modular feature-based structure
auth/ → authentication module
data/ → API & models
domain/ → business logic
presentation/ → UI & state

---

## Authentication Flow

* Login → stores access & refresh tokens securely
* Requests include Bearer token
* On 401:

  * Automatically refresh token
  * Retry original request
* If refresh fails:

  * User is logged out

---

## Features

* Register
* Login
* Auto-login
* Logout
* Protected home screen
* API error handling
* Loading states & validation

---

## Development Status

In development — built step by step following production standards.

---

## Goal

This project aims to simulate a **real-world production mobile application**, focusing on:

* Scalability
* Maintainability
* Security
* Professional architecture

---

## Backend

AuthForge API (FastAPI):
http://localhost:8000/api/v1

---

## Author

Built as part of a professional portfolio project.
