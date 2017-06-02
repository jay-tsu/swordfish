# Sample URLs supported by Swordfish Provider
## Contents
* [Root Service](#root-service)
* [Storage systems](#storage-systems-associated-to-serviceroot-entry)
* [Storage system - a member of `StorageSystems`](#storage-system-which-is-a-member-of-storagesystems)
* [Property of a storage system](#the-property-of-a-storage-system)
* [The collection of sub-ComputerSystem associated to a storage system](#the-collection-of-sub-computersystem-associated-to-a-storage-system)
* [A computer system - a member of `SupplyingComputerSystems`](#a-computer-system-which-is-a-member-of-supplyingcomputersystems)
* [The collection of top-ComputerSystem associated to a computer system](#the-collection-of-top-computersystem-associated-to-a-computer-system)
* [Storage services](#storage-services-associated-to-serviceroot-entry)
* [Storage service - a member of `StorageServices`](#storage-service-which-is-a-member-of-storageservices)
* [Volumes](#a-collection-of-volume-associated-to-a-storageservice)
* [Volume](#volume-which-is-a-member-of-storageservices-volumes)
* [StoragePools](#a-collection-of-storagepool-associated-to-a-storageservice)
* [StoragePool](#storagepool-which-is-a-member-of-storageservices-storagepools)
* [Create a StoragePool](#create-a-storagepool)
* [ClassesOfService](#a-collection-of-classofservice-associated-to-a-storageservice)
* [ClassOfService](#classofservice-which-is-a-member-of-storageservices-classesofservice)
* [Create a ClassOfService](#create-a-classofservice)
* Query Options
  * [$top](#query-option-top)
  * [$skip](#query-option-skip)
  * [$count](#query-option-count)
  * [$expand](#query-option-expand)
  * [$filter](#query-option-filter)

## Root Service  
#### Description:
Only implement two singleton properties __StorageSystems__ and __StorageServices__
#### Request URI
```GET http://localhost:8080/redfish/v1```
#### Response
```
{
    "@Redfish.CopyRight": "Copyright 2014-2016 Distributed Management Task Force, Inc. (DMTF). For the full DMTF copyright policy, see http://www.dmtf.org/about/policies/copyright.",
    "@odata.context": "/redfish/v1/$metadata#ServiceRoot.v1_1_1.ServiceRoot",
    "@odata.id": "/redfish/v1/",
    "@odata.type": "#ServiceRoot.v1_1_1.ServiceRoot",
    "RedfishVersion": "1.1.1",
    "UUID": "421f4993-2eab-7802-9e73-a9e7cf43318f",
    "Id": "421f4993-2eab-7802-9e73-a9e7cf43318f",
    "Name": "Root Service",
    "StorageSystems": {
        "@odata.id": "/redfish/v1/StorageSystems"
    },
    "StorageServices": {
        "@odata.id": "/redfish/v1/StorageServices"
    }
}
```

## Storage systems associated to `ServiceRoot` entry
#### Description:
List a collection of storage systems which are associated to `ServiceRoot` entry.
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageSystems```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#StorageSystemCollection.StorageSystemCollection",
    "@odata.type": "#StorageSystemCollection.StorageSystemCollection",
    "@odata.id": "/redfish/v1/StorageSystems",
    "Name": "StorageSystemCollection",
    "Description": "A Collection of ComputerSystem resource instances.",
    "Members": [
        {
            "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')"
        }
    ]
}
```
## Storage system which is a member of `StorageSystems`
#### Description:
The detail of a computer system which is a member of `StorageSystems`. The property **SupplyingComputerSystems** indicates a collection of computer systems to support multiple computer systems model. 
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#ComputerSystem.v1_4_0.ComputerSystem",
    "@odata.type": "#ComputerSystem.v1_4_0.ComputerSystem",
    "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')",
    "Id": "VIRT1706Q9X7KQ",
    "Name": "VIRT1706Q9X7KQ",
    "Manufacturer": "",
    "UUID": "4fdb0851-ee73-c655-0d13-a2a7f8a4f7ff",
    "Model": "UnityVSA",
    "SerialNumber": "VIRT1706Q9X7KQ",
    "PartNumber": "",
    "SystemType": "Virtual",
    "AssetTag": "Tungsten_SingleSP",
    "SKU": "",
    "HostName": "",
    "HostingRoles": "StorageServer",
    "PowerState": "On",
    "BiosVersion": "",
    "Description": "StroageProcessor VIRT1706Q9X7KQ",
    "Status":{
        "State": "Enabled",
        "Health": "OK",
        "HealthRollup": "OK",
        "Oem":{}
    },
    "Boot":{
        "BootSourceOverrideEnabled": "Once",
        "BootSourceOverrideTarget": "Pxe"
    },
    "ProcessorSummary":{
        "Count": 1,
        "Model": "Intel X5",
        "Status":{
            "State": "Enabled",
            "Health": "OK",
            "HealthRollup": "OK",
            "Oem":{}
        }
    },
    "MemorySummary":{
        "TotalSystemMemoryGiB": 0,
        "MemoryMirroring": "None",
        "Status":{
            "State": "Enabled",
            "Health": "OK",
            "HealthRollup": "OK",
            "Oem":{}
        }
    },
    "SupplyingComputerSystems":{
        "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')/SupplyingComputerSystems"
    }
}
```
## The property of a storage system
#### Description:
Query a property of a storage system 
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')/Id```
#### Response
```
{
    "@odata.context": "/redfish/v1/$metadata#ComputerSystem.v1_4_0.ComputerSystem",
    "value": "VIRT1706Q9X7KQ"
}
```
## The collection of sub-ComputerSystem associated to a storage system
#### Description:
Query a collection of sub-ComputerSystem which is associated to a storage system 
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')/SupplyingComputerSystems```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#ComputerSystemCollection.ComputerSystemCollection",
    "@odata.type": "#ComputerSystemCollection.ComputerSystemCollection",
    "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')/SupplyingComputerSystems",
    "Name": "ComputerSystemCollection",
    "Description": "A Collection of ComputerSystem resource instances.",
    "Members":[
        {
            "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')/SupplyingComputerSystems/Members('spa')"
        }
    ]
}
```
## A computer system which is a member of `SupplyingComputerSystems`
#### Description:
Query a computer system which is a member of `SupplyingComputerSystems`
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')/SupplyingComputerSystems/Members('spa')```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#ComputerSystem.v1_4_0.ComputerSystem",
    "@odata.type": "#ComputerSystem.v1_4_0.ComputerSystem",
    "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')/SupplyingComputerSystems/Members('spa')",
    "Id": "spa",
    "Name": "SP A",
    "Manufacturer": "",
    "UUID": "42257e94-ee73-c655-0d13-a2a7f8a4f7ff",
    "Model": "",
    "SerialNumber": "VIRT1706S9X7C7",
    "PartNumber": "",
    "SystemType": "Virtual",
    "AssetTag": "",
    "SKU": "",
    "HostName": "",
    "HostingRoles": "StorageServer",
    "PowerState": "On",
    "BiosVersion": "",
    "Description": "StroageProcessor spa",
    "Status":{
        "State": "Enabled",
        "Health": "OK",
        "HealthRollup": "OK",
        "Oem":{}
    },
    "Boot":{
        "BootSourceOverrideEnabled": "Once",
        "BootSourceOverrideTarget": "Pxe"
    },
    "ProcessorSummary":{
        "Count": 1,
        "Model": "Intel X5",
        "Status":{
                "State": "Enabled",
                "Health": "OK",
                "HealthRollup": "OK",
                "Oem":{}
        }
    },
    "MemorySummary":{
        "TotalSystemMemoryGiB": 12288,
        "MemoryMirroring": "None",
        "Status":{
            "State": "Enabled",
            "Health": "OK",
            "HealthRollup": "OK",
            "Oem":{}
        }
    },
    "ClientComputerSystems":{
        "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')/SupplyingComputerSystems/Members('spa')/ClientComputerSystems"
    }
}
```
## The collection of top-ComputerSystem associated to a computer system
#### Description:
Query a collection of top-ComputerSystem which is associated to a computer system 
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')/SupplyingComputerSystems/Members('spa')/ClientComputerSystems```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#ComputerSystemCollection.ComputerSystemCollection",
    "@odata.type": "#ComputerSystemCollection.ComputerSystemCollection",
    "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')/SupplyingComputerSystems/Members('spa')/ClientComputerSystems",
    "Name": "ComputerSystemCollection",
    "Description": "A Collection of ComputerSystem resource instances.",
    "Members":[
        {
            "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')"
        }
    ]
}
```
## Storage services associated to `ServiceRoot` entry
#### Description:
List a collection of storage services which are associated to `ServiceRoot` entry.
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageServices```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#StorageServiceCollection.StorageServiceCollection",
    "@odata.type": "#StorageServiceCollection.StorageServiceCollection",
    "@odata.id": "/redfish/v1/StorageServices",
    "Name": "StorageServiceCollection",
    "Description": "A collection of references to Storage Service resource instances.",
    "Members":[
        {
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')"
        }
    ]
}
```
## Storage service which is a member of `StorageServices`
#### Description:
The detail of a storage service which is a member of `StorageServices`. 
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#StorageService.v1_0_0.StorageService",
    "@odata.type": "#StorageService.v1_0_0.StorageService",
    "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')",
    "Id": "421F4993-2EAB-7802-9E73-A9E7CF43318F",
    "Name": "StorageService",
    "Description": "Storage Service",
    "Status":{
        "State": "Enabled",
        "Health": "OK",
        "HealthRollup": "OK",
        "Oem":{}
    },
    "Links":{
        "Oem":{},
        "DefaultClassOfService":{
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('Default')"
    }
    },
    "ClassesOfService":{
        "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService"
    },
    "Volumes":{
        "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/Volumes"
    },
    "StoragePools":{
        "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools"
    }
}
```
## A collection of Volume associated to a StorageService
#### Description:
A collection of Volumes associated to a StorageService
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/Volumes```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#VolumeCollection.VolumeCollection",
    "@odata.type": "#VolumeCollection.VolumeCollection",
    "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/Volumes",
    "Name": "Volumes Collection",
    "Description": "Description of Volume Collection",
    "Members":[
        {
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/Volumes/Members('1')"
        },
        {
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/Volumes/Members('2')"
        }
    ]
}
```
## Volume which is a member of StorageService's `Volumes`
#### Description:
The detail of a volume which is a member of StorageService's `Volumes`.
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/Volumes/Members('1')```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#Volume.v1_1_0.Volume",
    "@odata.type": "#Volume.v1_1_0.Volume",
    "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/Volumes/Members('1')",
    "Id": "1",
    "Name": "Logical Disk 1",
    "Manufacturer": "ACME",
    "BlockSizeBytes": 512,
    "CapacityBytes": 11111111,
    "Model": "Drive Model",
    "Description": "Logical Disk 1",
    "Status":{
        "State": "Enabled",
        "Health": "OK",
        "HealthRollup": "OK",
        "Oem":{}
    },
    "Capacity":{
        "IsThinProvisioned": true,
        "Data":{
            "ConsumedBytes": 1234,
            "AllocatedBytes": 123456
        }
    },
    "Links":{
        "Oem":{},
        "ClassOfService":{
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('Cos_LUN_Provision_0')"
        }
    },
    "AllocatedPools":{
        "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/Volumes/Members('1')/AllocatedPools"
    }
}
```
## A collection of StoragePool associated to a StorageService
#### Description:
A collection of StoragePool associated to a StorageService
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#StoragePoolCollection.StoragePoolCollection",
    "@odata.type": "#StoragePoolCollection.StoragePoolCollection",
    "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools",
    "Name": "StoragePoolCollection",
    "Description": "A collection of references to Allocated Pools resource instances.",
    "Members":[
        {
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('BasePool')"
        },
        {
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('AllocatedPool_1')"
        },
        {
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('AllocatedPool_2')"
        }
    ]
}
```
## StoragePool which is a member of StorageService's `StoragePools`
#### Description:
The detail of a storage pool which is a member of StorageService's `StoragePools`.
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('BasePool')```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#StoragePool.v1_0_0.StoragePool",
    "@odata.type": "#StoragePool.v1_0_0.StoragePool",
    "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('BasePool')",
    "Id": "BasePool",
    "Name": "BasePool",
    "Description": "Storage pool 'BasePool'",
    "BlockSizeBytes": 512,
    "Capacity":{
        "Data":{
            "ConsumedBytes": 549755813888,
            "AllocatedBytes": 1099511627776,
            "GuaranteedBytes": 70368744177664,
            "ProvisionedBytes": 140737488355328
        }
    },
    "LowSpaceWarningThresholdPercents":[
        60,
        70,
        80
    ],
    "Status":{
        "State": "Enabled",
        "Health": "OK",
        "HealthRollup": "Critical",
        "Oem":{}
    },
    "Links":{
        "Oem":{},
        "DefaultClassOfService":{
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('Cos_LUN_Provision_0')"
        }
    },
    "ClassesOfService":{
        "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('BasePool')/ClassesOfService"
    },
    "AllocatedVolumes":{
        "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('BasePool')/AllocatedVolumes"
    },
    "AllocatedPools":{
        "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('BasePool')/AllocatedPools"
    }
}
```
## Create a StoragePool
#### Description:
Create a StoragePool which is associated to a StorageService
#### Request URI
```POST http://localhost:8080/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members```
#### Request body
```
{
  "Name": "SSD",
  "Description": "Minimal SSD class of service.",
  "Capacity": {
      "Data": {
	      "ProvisionedBytes": 10000000
	  },
      "IsThinProvisioned": false
  },
  "ClassesOfService": {
    "Members": [{
        "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('SSD')"
    }]
  }
}
```
#### Response header
```
Location: /redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('SSD')
```
#### Response body
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#StoragePool.v1_0_0.StoragePool",
    "@odata.type": "#StoragePool.v1_0_0.StoragePool",
    "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('SSD')",
    "Id": "SSD",
    "Name": "SSD",
    "Description": "Minimal SSD class of service.",
    "BlockSizeBytes": 512,
    "Capacity":{
        "Data":{
            "ConsumedBytes": 0,
            "AllocatedBytes": 0,
            "GuaranteedBytes": 0,
            "ProvisionedBytes": 10000000
        }
    },
    "LowSpaceWarningThresholdPercents":[
        60,
        70,
        80
    ],
    "Status":{
        "State": "Enabled",
        "Health": "OK",
        "HealthRollup": "Critical",
        "Oem":{}
    },
    "Links":{
        "Oem":{},
        "DefaultClassOfService":{
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('SSD')"
        }
    },
    "ClassesOfService":{
        "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('SSD')/ClassesOfService"
    }
}
```
## A collection of ClassOfService associated to a StorageService
#### Description:
A collection of ClassOfService associated to a StorageService
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#ClassOfServiceCollection.ClassOfServiceCollection",
    "@odata.type": "#ClassOfServiceCollection.ClassOfServiceCollection",
    "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService",
    "Name": "ClassOfServiceCollection",
    "Description": "A Collection of ClassOfService resource instances.",
    "Members":[
        {
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('Cos_LUN_Provision_0')"
        },
        {
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('Cos_LUN_Provision_1')"
        },
        {
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('Default')"
        }
    ]
}
```
## ClassOfService which is a member of StorageService's `ClassesOfService`
#### Description:
The detail of a ClassOfService which is a member of StorageService's `ClassesOfService`.
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('Cos_LUN_Provision_0')```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#ClassOfService.v1_0_0.ClassOfService",
    "@odata.type": "#ClassOfService.v1_0_0.ClassOfService",
    "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('Cos_LUN_Provision_0')",
    "Id": "Cos_LUN_Provision_0",
    "Name": "Cos_LUN_Provision_0",
    "Description": "ClassOfService: Thin LUN Provisioning",
    "ClassOfServiceVersion": "0.01",
    "LinesOfService":{
        "DataStorageLinesOfService":[
            {
                "Name": "DataStorageLos_Thin",
                "IsSpaceEfficient": false,
                "RecoveryTimeObjectives": "Offline",
                "ProvisioningPolicy": "Thin"
            }
        ]
    }
}
```
## Create a ClassOfService
#### Description:
Create a ClassOfService which is associated to a StorageService
#### Request URI
```POST http://localhost:8080/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members```
#### Request body
```
{
  "Name": "SSD",
  "Description": "Minimal SSD class of service.",
  "LinesOfService": {
      "IOPerformanceLinesOfService": [{
	      "IOOperationsPerSecondIsLimited": false,
		  "MaxIOOperationsPerSecondPerTerabyte": 100000,
		  "AverageIOOperationLatencyMicroseconds": 10
	  }]
  }
}
```
#### Response header
```
Location: /redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('SSD')
```
#### Response body
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#ClassOfService.v1_0_0.ClassOfService",
    "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('SSD')",
    "Id": "SSD",
    "Name": "SSD",
    "Description": "Minimal SSD class of service.",
    "ClassOfServiceVersion": "0.0.1",
    "LinesOfService":{
        "@odata.type": "#ClassOfService.v1_0_0.LinesOfService",
        "IOPerformanceLinesOfService":[
            {
                "@odata.type": "#IOPerformanceLoSCapabilities.IOPerformanceLineOfService",
                "IOOperationsPerSecondIsLimited": false,
                "MaxIOOperationsPerSecondPerTerabyte": 100000,
                "AverageIOOperationLatencyMicroseconds": 10
            }
        ]
    }
}
```
#### Query Option: $top 
#### Description:
Query top N entries of StorageServices's `StoragePools`.
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members?$top=1```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1$metadata#StoragePool.v1_0_0.StoragePool",
    "Members":[
        {
            "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
            "@odata.context": "/redfish/v1$metadata#StoragePool.v1_0_0.StoragePool",
            "@odata.type": "#StoragePool.v1_0_0.StoragePool",
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('BasePool')",
            "Id": "BasePool",
            "Name": "BasePool",
            "Description": "Storage pool 'BasePool'",
            "BlockSizeBytes": 512,
            "Capacity":{
                "Data":{
                    "ConsumedBytes": 549755813888,
                    "AllocatedBytes": 1099511627776,
                    "GuaranteedBytes": 70368744177664,
                    "ProvisionedBytes": 140737488355328
                }
            },
            "LowSpaceWarningThresholdPercents":[
                60,
                70,
                80
            ],
            "Status":{
                "State": "Enabled",
                "Health": "OK",
                "HealthRollup": "Critical",
                "Oem":{}
            },
            "Links":{
                "Oem":{},
                "DefaultClassOfService":{
                    "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('Cos_LUN_Provision_0')"
                }
            },
            "ClassesOfService":{
                "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('BasePool')/ClassesOfService"
            },
            "AllocatedVolumes":{
                "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('BasePool')/AllocatedVolumes"
            },
            "AllocatedPools":{
                "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('BasePool')/AllocatedPools"
            }
        }
    ]
}
```
#### Query Option: $skip 
#### Description:
Skip top N entries of StorageServices's `StoragePools`.
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members?$skip=2```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1$metadata#StoragePool.v1_0_0.StoragePool",
    "Members":[
        {
            "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
            "@odata.context": "/redfish/v1$metadata#StoragePool.v1_0_0.StoragePool",
            "@odata.type": "#StoragePool.v1_0_0.StoragePool",
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('AllocatedPool_2')",
            "Id": "AllocatedPool_2",
            "Name": "AllocatedPool_from_Volume_1",
            "Description": "Allocated Pool from Volume (1)",
            "BlockSizeBytes": 512,
            "Capacity":{
                "Data":{
                    "ConsumedBytes": 549755813888,
                    "AllocatedBytes": 1099511627776,
                    "GuaranteedBytes": 703687477664,
                    "ProvisionedBytes": 1407374855328
                }
            },
            "LowSpaceWarningThresholdPercents":[
                60,
                70,
                80
            ],
            "Status":{
                "State": "Enabled",
                "Health": "OK",
                "HealthRollup": "Critical",
                "Oem":{}
            },
            "Links":{
                "Oem":{},
                "DefaultClassOfService":{
                    "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('Cos_LUN_Provision_1')"
                }
            },
            "ClassesOfService":{
                "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('AllocatedPool_2')/ClassesOfService"
            }
        },
        {
            "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
            "@odata.context": "/redfish/v1$metadata#StoragePool.v1_0_0.StoragePool",
            "@odata.type": "#StoragePool.v1_0_0.StoragePool",
            "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('SSD')",
            "Id": "SSD",
            "Name": "SSD",
            "Description": "Minimal SSD class of service.",
            "BlockSizeBytes": 512,
            "Capacity":{
            "Data":{
                "ConsumedBytes": 0,
                "AllocatedBytes": 0,
                "GuaranteedBytes": 0,
                "ProvisionedBytes": 10000000
                }
            },
            "LowSpaceWarningThresholdPercents":[
                60,
                70,
                80
            ],
            "Status":{
                "State": "Enabled",
                "Health": "OK",
                "HealthRollup": "Critical",
                "Oem":{}
            },
            "Links":{
                "Oem":{},
                "DefaultClassOfService":{
                    "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/ClassesOfService/Members('SSD')"
                }
            },
            "ClassesOfService":{
                "@odata.id": "/redfish/v1/StorageServices/Members('421F4993-2EAB-7802-9E73-A9E7CF43318F')/StoragePools/Members('SSD')/ClassesOfService"
            }
        }
    ]
}
```
#### Query Option: $count 
#### Description:
Add the property `Member@odata.count` into Response.
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageSystems/Members?$count=true```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1$metadata#ComputerSystem.v1_4_0.ComputerSystem",
    "Members@odata.count": 1,
    "Members":[
        {
            "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
            "@odata.context": "/redfish/v1$metadata#ComputerSystem.v1_4_0.ComputerSystem",
            "@odata.type": "#ComputerSystem.v1_4_0.ComputerSystem",
            "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')",
            "Id": "VIRT1706Q9X7KQ",
            "Name": "VIRT1706Q9X7KQ",
            "Manufacturer": "",
            "UUID": "4fdb0851-ee73-c655-0d13-a2a7f8a4f7ff",
            "Model": "UnityVSA",
            "SerialNumber": "VIRT1706Q9X7KQ",
            "PartNumber": "",
            "SystemType": "Virtual",
            "AssetTag": "Tungsten_SingleSP",
            "SKU": "",
            "HostName": "",
            "HostingRoles": "StorageServer",
            "PowerState": "On",
            "BiosVersion": "",
            "Description": "StroageProcessor VIRT1706Q9X7KQ",
            "Status":{
                "State": "Enabled",
                "Health": "OK",
                "HealthRollup": "OK",
                "Oem":{}
            },
            "Boot":{
                "BootSourceOverrideEnabled": "Once",
                "BootSourceOverrideTarget": "Pxe"
            },
            "ProcessorSummary":{
                "Count": 1,
                "Model": "Intel X5",
                "Status":{
                    "State": "Enabled",
                    "Health": "OK",
                    "HealthRollup": "OK",
                    "Oem":{}
                }
            },
            "MemorySummary":{
                "TotalSystemMemoryGiB": 0,
                "MemoryMirroring": "None",
                "Status":{
                    "State": "Enabled",
                    "Health": "OK",
                    "HealthRollup": "OK",
                    "Oem":{}
                }
            },
            "SupplyingComputerSystems":{
                "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')/SupplyingComputerSystems"
            }
        }
    ]
}
```
#### Query Option: $expand
#### Description:
Expand the detail of StorageSystems instead of @odata.id only.
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageSystems?$expand=Members```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1/$metadata#StorageSystemCollection.StorageSystemCollection",
    "@odata.type": "#StorageSystemCollection.StorageSystemCollection",
    "@odata.id": "/redfish/v1/StorageSystems",
    "Name": "StorageSystemCollection",
    "Description": "A Collection of ComputerSystem resource instances.",
    "Members":[
        {
            "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
            "@odata.context": "/redfish/v1/$metadata#ComputerSystem.v1_4_0.ComputerSystem",
            "@odata.type": "#ComputerSystem.v1_4_0.ComputerSystem",
            "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')",
            "Id": "VIRT1706Q9X7KQ",
            "Name": "VIRT1706Q9X7KQ",
            "Manufacturer": "",
            "UUID": "4fdb0851-ee73-c655-0d13-a2a7f8a4f7ff",
            "Model": "UnityVSA",
            "SerialNumber": "VIRT1706Q9X7KQ",
            "PartNumber": "",
            "SystemType": "Virtual",
            "AssetTag": "Tungsten_SingleSP",
            "SKU": "",
            "HostName": "",
            "HostingRoles": "StorageServer",
            "PowerState": "On",
            "BiosVersion": "",
            "Description": "StroageProcessor VIRT1706Q9X7KQ",
            "Status":{
                "State": "Enabled",
                "Health": "OK",
                "HealthRollup": "OK",
                "Oem":{}
            },
            "Boot":{
                "BootSourceOverrideEnabled": "Once",
                "BootSourceOverrideTarget": "Pxe"
            },
            "ProcessorSummary":{
                "Count": 1,
                "Model": "Intel X5",
                "Status":{
                    "State": "Enabled",
                    "Health": "OK",
                    "HealthRollup": "OK",
                    "Oem":{}
                }
            },
            "MemorySummary":{
                "TotalSystemMemoryGiB": 0,
                "MemoryMirroring": "None",
                "Status":{
                    "State": "Enabled",
                    "Health": "OK",
                    "HealthRollup": "OK",
                    "Oem":{}
                }
            },
            "SupplyingComputerSystems":{
                "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')/SupplyingComputerSystems"
            }
        }
    ]
}
```
#### Query Option: $filter 
#### Description:
Filter StorageSystems.
#### Request URI
```GET http://localhost:8080/redfish/v1/StorageSystems/Members?$filter=contains(Model,'UnityVSA')```
#### Response
```
{
    "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
    "@odata.context": "/redfish/v1$metadata#ComputerSystem.v1_4_0.ComputerSystem",
    "Members":[
        {
            "@Redfish.Copyright": "Copyright 2015-2016 SNIA. All rights reserved.",
            "@odata.context": "/redfish/v1$metadata#ComputerSystem.v1_4_0.ComputerSystem",
            "@odata.type": "#ComputerSystem.v1_4_0.ComputerSystem",
            "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')",
            "Id": "VIRT1706Q9X7KQ",
            "Name": "VIRT1706Q9X7KQ",
            "Manufacturer": "",
            "UUID": "4fdb0851-ee73-c655-0d13-a2a7f8a4f7ff",
            "Model": "UnityVSA",
            "SerialNumber": "VIRT1706Q9X7KQ",
            "PartNumber": "",
            "SystemType": "Virtual",
            "AssetTag": "Tungsten_SingleSP",
            "SKU": "",
            "HostName": "",
            "HostingRoles": "StorageServer",
            "PowerState": "On",
            "BiosVersion": "",
            "Description": "StroageProcessor VIRT1706Q9X7KQ",
            "Status":{
                "State": "Enabled",
                "Health": "OK",
                "HealthRollup": "OK",
                "Oem":{}
            },
            "Boot":{
                "BootSourceOverrideEnabled": "Once",
                "BootSourceOverrideTarget": "Pxe"
            },
            "ProcessorSummary":{
                "Count": 1,
                "Model": "Intel X5",
                "Status":{
                    "State": "Enabled",
                    "Health": "OK",
                    "HealthRollup": "OK",
                    "Oem":{}
                }
            },
            "MemorySummary":{
                "TotalSystemMemoryGiB": 0,
                "MemoryMirroring": "None",
                "Status":{
                    "State": "Enabled",
                    "Health": "OK",
                    "HealthRollup": "OK",
                    "Oem":{}
                }
            },
            "SupplyingComputerSystems":{
                "@odata.id": "/redfish/v1/StorageSystems/Members('VIRT1706Q9X7KQ')/SupplyingComputerSystems"
            }
        }
    ]
}
```
