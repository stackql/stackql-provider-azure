--- 
title: operations
hide_title: false
hide_table_of_contents: false
keywords:
  - operations
  - sap_workloads
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>operations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.sap_workloads.operations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the operation, as per Resource-Based Access Control (RBAC). Examples: "Microsoft.Compute/virtualMachines/write", "Microsoft.Compute/virtualMachines/capture/action"</td>
</tr>
<tr>
    <td><CopyableCode code="actionType" /></td>
    <td><code>string</code></td>
    <td>Enum. Indicates the action type. "Internal" refers to actions that are for internal only APIs.</td>
</tr>
<tr>
    <td><CopyableCode code="display" /></td>
    <td><code>object</code></td>
    <td>Localized display information for this particular operation.</td>
</tr>
<tr>
    <td><CopyableCode code="isDataAction" /></td>
    <td><code>boolean</code></td>
    <td>Whether the operation applies to data-plane. This is "true" for data-plane operations and "false" for ARM/control-plane operations.</td>
</tr>
<tr>
    <td><CopyableCode code="origin" /></td>
    <td><code>string</code></td>
    <td>The intended executor of the operation; as in Resource Based Access Control (RBAC) and audit logs UX. Default value is "user,system"</td>
</tr>
</tbody>
</table>
</TabItem>
</Tabs>

## Methods

The following methods are available for this resource:

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Accessible by</th>
    <th>Required Params</th>
    <th>Optional Params</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Lists all the available API operations under this PR</td>
</tr>
<tr>
    <td><a href="#sap_sizing_recommendations"><CopyableCode code="sap_sizing_recommendations" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-appLocation"><code>appLocation</code></a>, <a href="#parameter-environment"><code>environment</code></a>, <a href="#parameter-sapProduct"><code>sapProduct</code></a>, <a href="#parameter-deploymentType"><code>deploymentType</code></a>, <a href="#parameter-saps"><code>saps</code></a>, <a href="#parameter-dbMemory"><code>dbMemory</code></a>, <a href="#parameter-databaseType"><code>databaseType</code></a></td>
    <td></td>
    <td>Get SAP sizing recommendations by providing input SAPS for application tier and memory required for database tier</td>
</tr>
<tr>
    <td><a href="#sap_supported_sku"><CopyableCode code="sap_supported_sku" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-appLocation"><code>appLocation</code></a>, <a href="#parameter-environment"><code>environment</code></a>, <a href="#parameter-sapProduct"><code>sapProduct</code></a>, <a href="#parameter-databaseType"><code>databaseType</code></a>, <a href="#parameter-deploymentType"><code>deploymentType</code></a></td>
    <td></td>
    <td>Get a list of SAP supported SKUs for ASCS, Application and Database tier.</td>
</tr>
<tr>
    <td><a href="#sap_disk_configurations"><CopyableCode code="sap_disk_configurations" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-appLocation"><code>appLocation</code></a>, <a href="#parameter-environment"><code>environment</code></a>, <a href="#parameter-sapProduct"><code>sapProduct</code></a>, <a href="#parameter-databaseType"><code>databaseType</code></a>, <a href="#parameter-deploymentType"><code>deploymentType</code></a>, <a href="#parameter-dbVmSku"><code>dbVmSku</code></a></td>
    <td></td>
    <td>Get the SAP Disk Configuration Layout prod/non-prod SAP System.</td>
</tr>
<tr>
    <td><a href="#sap_availability_zone_details"><CopyableCode code="sap_availability_zone_details" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-appLocation"><code>appLocation</code></a>, <a href="#parameter-sapProduct"><code>sapProduct</code></a>, <a href="#parameter-databaseType"><code>databaseType</code></a></td>
    <td></td>
    <td>Get the recommended SAP Availability Zone Pair Details for your region.</td>
</tr>
</tbody>
</table>

## Parameters

Parameters can be passed in the `WHERE` clause of a query. Check the [Methods](#methods) section to see which parameters are required or optional for each operation.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The name of Azure region.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Lists all the available API operations under this PR

```sql
SELECT
name,
actionType,
display,
isDataAction,
origin
FROM azure_isv.sap_workloads.operations
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="sap_sizing_recommendations"
    values={[
        { label: 'sap_sizing_recommendations', value: 'sap_sizing_recommendations' },
        { label: 'sap_supported_sku', value: 'sap_supported_sku' },
        { label: 'sap_disk_configurations', value: 'sap_disk_configurations' },
        { label: 'sap_availability_zone_details', value: 'sap_availability_zone_details' }
    ]}
>
<TabItem value="sap_sizing_recommendations">

Get SAP sizing recommendations by providing input SAPS for application tier and memory required for database tier

```sql
EXEC azure_isv.sap_workloads.operations.sap_sizing_recommendations 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"appLocation": "{{ appLocation }}", 
"environment": "{{ environment }}", 
"sapProduct": "{{ sapProduct }}", 
"deploymentType": "{{ deploymentType }}", 
"saps": {{ saps }}, 
"dbMemory": {{ dbMemory }}, 
"databaseType": "{{ databaseType }}", 
"dbScaleMethod": "{{ dbScaleMethod }}", 
"highAvailabilityType": "{{ highAvailabilityType }}"
}'
;
```
</TabItem>
<TabItem value="sap_supported_sku">

Get a list of SAP supported SKUs for ASCS, Application and Database tier.

```sql
EXEC azure_isv.sap_workloads.operations.sap_supported_sku 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"appLocation": "{{ appLocation }}", 
"environment": "{{ environment }}", 
"sapProduct": "{{ sapProduct }}", 
"deploymentType": "{{ deploymentType }}", 
"databaseType": "{{ databaseType }}", 
"highAvailabilityType": "{{ highAvailabilityType }}"
}'
;
```
</TabItem>
<TabItem value="sap_disk_configurations">

Get the SAP Disk Configuration Layout prod/non-prod SAP System.

```sql
EXEC azure_isv.sap_workloads.operations.sap_disk_configurations 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"appLocation": "{{ appLocation }}", 
"environment": "{{ environment }}", 
"sapProduct": "{{ sapProduct }}", 
"databaseType": "{{ databaseType }}", 
"deploymentType": "{{ deploymentType }}", 
"dbVmSku": "{{ dbVmSku }}"
}'
;
```
</TabItem>
<TabItem value="sap_availability_zone_details">

Get the recommended SAP Availability Zone Pair Details for your region.

```sql
EXEC azure_isv.sap_workloads.operations.sap_availability_zone_details 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"appLocation": "{{ appLocation }}", 
"sapProduct": "{{ sapProduct }}", 
"databaseType": "{{ databaseType }}"
}'
;
```
</TabItem>
</Tabs>
