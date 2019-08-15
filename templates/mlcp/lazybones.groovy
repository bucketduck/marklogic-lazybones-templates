def props = [:]
props.projectDir = projectDir
props.mlVersion = ask("MarkLogic version [9.0.9]: ", "9.0.9", "mlVersion")

props.mlHost = ask("MarkLogic host to export from [localhost]: ", "localhost", "mlHost")
props.mlUser = ask("MarkLogic user to export from [admin]: ", "admin", "mlUser")
props.mlPassword = ask("MarkLogic password to export from [admin]: ", "admin", "mlPassword")
props.mlPort = ask("MarkLogic XCC port to export from [8000]: ", "8000", "mlPort")
props.mlDatabase = ask("MarkLogic database to export from [Documents]: ", "Documents", "mlDatabase")

props.mlHostImport = ask("MarkLogic host to import to [${props.mlHost}]: ", props.mlHost, "mlHostImport")
props.mlUserImport = ask("MarkLogic user to import to [${props.mlUser}]: ", props.mlUser, "mlUserImport")
props.mlPasswordImport = ask("MarkLogic password to import to [${props.mlPassword}]: ", props.mlPassword, "mlPasswordImport")
props.mlPortImport = ask("MarkLogic XCC port to import to [${props.mlPort}]: ", props.mlPort, "mlPortImport")
props.mlDatabaseImport = ask("MarkLogic database to import to [${props.mlDatabase}]: ", props.mlDatabase, "mlDatabaseImport")

processTemplates "build.gradle", props
processTemplates "import_archive.sh", props
processTemplates "export_archive.sh", props
processTemplates "copy.sh", props