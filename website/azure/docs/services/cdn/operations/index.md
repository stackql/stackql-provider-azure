--- 
title: operations
hide_title: false
hide_table_of_contents: false
keywords:
  - operations
  - cdn
  - azure
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure resources using SQL
custom_edit_url: null
image: /img/stackql-azure-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>operations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.operations" /></td></tr>
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

OK. The request has succeeded.

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
    <td>Operation name: &#123;provider&#125;/&#123;resource&#125;/&#123;operation&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="display" /></td>
    <td><code></code></td>
    <td>The object that represents the operation.</td>
</tr>
<tr>
    <td><CopyableCode code="isDataAction" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether the operation is a data action</td>
</tr>
<tr>
    <td><CopyableCode code="origin" /></td>
    <td><code>string</code></td>
    <td>The origin of operations.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of operation, include metric specifications. (x-ms-client-name: OperationProperties)</td>
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
    <td>Lists all of the available CDN REST API operations.</td>
</tr>
<tr>
    <td><a href="#check_endpoint_name_availability"><CopyableCode code="check_endpoint_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Check the availability of a resource name. This is needed for resources where name is globally unique, such as a afdx endpoint.</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Check the availability of a resource name. This is needed for resources where name is globally unique, such as a CDN endpoint.</td>
</tr>
<tr>
    <td><a href="#check_name_availability_with_subscription"><CopyableCode code="check_name_availability_with_subscription" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Check the availability of a resource name. This is needed for resources where name is globally unique, such as a CDN endpoint.</td>
</tr>
<tr>
    <td><a href="#validate_probe"><CopyableCode code="validate_probe" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-probeURL"><code>probeURL</code></a></td>
    <td></td>
    <td>Check if the probe path is a valid path and the file can be accessed. Probe path is the path to a file hosted on the origin server to help accelerate the delivery of dynamic content via the CDN endpoint. This path is relative to the origin path specified in the endpoint configuration.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the Resource group within the Azure subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure Subscription ID.</td>
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

Lists all of the available CDN REST API operations.

```sql
SELECT
name,
display,
isDataAction,
origin,
properties
FROM azure.cdn.operations
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_endpoint_name_availability"
    values={[
        { label: 'check_endpoint_name_availability', value: 'check_endpoint_name_availability' },
        { label: 'check_name_availability', value: 'check_name_availability' },
        { label: 'check_name_availability_with_subscription', value: 'check_name_availability_with_subscription' },
        { label: 'validate_probe', value: 'validate_probe' }
    ]}
>
<TabItem value="check_endpoint_name_availability">

Check the availability of a resource name. This is needed for resources where name is globally unique, such as a afdx endpoint.

```sql
EXEC azure.cdn.operations.check_endpoint_name_availability 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}", 
"autoGeneratedDomainNameLabelScope": "{{ autoGeneratedDomainNameLabelScope }}"
}'
;
```
</TabItem>
<TabItem value="check_name_availability">

Check the availability of a resource name. This is needed for resources where name is globally unique, such as a CDN endpoint.

```sql
EXEC azure.cdn.operations.check_name_availability 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="check_name_availability_with_subscription">

Check the availability of a resource name. This is needed for resources where name is globally unique, such as a CDN endpoint.

```sql
EXEC azure.cdn.operations.check_name_availability_with_subscription 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="validate_probe">

Check if the probe path is a valid path and the file can be accessed. Probe path is the path to a file hosted on the origin server to help accelerate the delivery of dynamic content via the CDN endpoint. This path is relative to the origin path specified in the endpoint configuration.

```sql
EXEC azure.cdn.operations.validate_probe 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"probeURL": "{{ probeURL }}"
}'
;
```
</TabItem>
</Tabs>
