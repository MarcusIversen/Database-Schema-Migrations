# Database-Schema-Migrations

## Instructions for setting up the project.

1. For cloning the repository:

```
git clone https://github.com/MarcusIversen/Database-Schema-Migrations/
```

2. Build the project

Navigate to the EntityFramework folder and run the following command:

```
dotnet build
```

 3. Ensure you have the correct Entity Framework Tool version installed globally 

```
dotnet tool install --global dotnet-ef --version 7.0.16
```


## Documentation for the manual migrations.

Each migration shows the progress of the SQL database.

Each migration can be found in the migrations folder.

The naming convention used for these migrations are the following:

```
"V[number]_[ddmmyyyyy]__[desc].sql"
```

Example:
```
"V2_26022024__add_product_ratings.sql"
```

## Documentation for the EF Core migrations.

The command used for creating a migration:
```
dotnet ef migrations add [desc]
```

Example:
```
dotnet ef migrations add categories_added
```

Result of EF migration can be found under EntityFramework/Migrations.
```
"20240304093227_InitialSetup.Designer.cs"
```

## Rollback instructions for manual migrations.

Rollbacks for the manual migrations can be found under migrations/Rollbacks

Naming convention:
```
"V[number]_[ddmmyyyyy]__[desc]_rollback.sql"
```

Example:
```
"V1.1_28022024__add_categories_rollback.sql"
```

## Rollback instructions for EF Core migrations

To Remove the last migration used and delete the created file:
```
dotnet ef migrations remove --force
```