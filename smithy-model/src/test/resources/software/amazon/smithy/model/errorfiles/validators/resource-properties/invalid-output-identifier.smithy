$version: "2.0"

metadata suppressions = [
    {
        id: "ResourceOperationInputOutput",
        namespace: "com.example"
    }
]

namespace com.example

resource Resource1 {
    identifiers: {
        id: String
    }
    properties: {
        property: String
    }
    create: CreateResource
}

service Service {
    resources: [Resource1]
}

operation CreateResource {
    input := {
        @nestedProperties
        nested: ResourceDescription
    }
    output := {
        id: String
    }
}
structure ResourceDescription {
    property: String
}
