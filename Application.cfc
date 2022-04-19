component {

    loadDatasources()
    loadMappings()

    private void function loadDataSources() {
        this.datasources["cf2021_and_mariadb"] = {
            driver : "mysql",
            url : "jdbc:mysql://database.backend:3306/cf2021_and_mariadb?useUnicode=true&characterEncoding=UTF-8",
            username : "cf2021_and_mariadb",
            password : server.system.environment.MARIADB_PASSWORD
        }
        this.datasource = "cf2021_and_mariadb"
    }

    private void function loadMappings() {
        thisDirectory = getDirectoryFromPath(getCurrentTemplatePath())
        vendorDirectory = thisDirectory & "vendor/"
        this.mappings["/com"] = vendorDirectory & "com"
        this.mappings["/org"] = vendorDirectory & "org"
        this.mappings["/testbox"] = thisDirectory & "testbox"
    }
}
