--- 
title: serial_ports
hide_title: false
hide_table_of_contents: false
keywords:
  - serial_ports
  - serial_console
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

Creates, updates, deletes, gets or lists a <code>serial_ports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>serial_ports</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.serial_console.serial_ports" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_by_subscriptions', value: 'list_by_subscriptions' }
    ]}
>
<TabItem value="get">

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the serial port.</td>
</tr>
</tbody>
</table>
</TabItem>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the serial port.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscriptions">

OK - Return a list of SerialPort resources

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the serial port.</td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceProviderNamespace"><code>resourceProviderNamespace</code></a>, <a href="#parameter-parentResourceType"><code>parentResourceType</code></a>, <a href="#parameter-parentResource"><code>parentResource</code></a>, <a href="#parameter-serialPort"><code>serialPort</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the configured settings for a serial port</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceProviderNamespace"><code>resourceProviderNamespace</code></a>, <a href="#parameter-parentResourceType"><code>parentResourceType</code></a>, <a href="#parameter-parentResource"><code>parentResource</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all of the configured serial ports for a parent resource </td>
</tr>
<tr>
    <td><a href="#list_by_subscriptions"><CopyableCode code="list_by_subscriptions" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Handles requests to list all SerialPort resources in a subscription.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceProviderNamespace"><code>resourceProviderNamespace</code></a>, <a href="#parameter-parentResourceType"><code>parentResourceType</code></a>, <a href="#parameter-parentResource"><code>parentResource</code></a>, <a href="#parameter-serialPort"><code>serialPort</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a serial port</td>
</tr>
<tr>
    <td><a href="#connect"><CopyableCode code="connect" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceProviderNamespace"><code>resourceProviderNamespace</code></a>, <a href="#parameter-parentResourceType"><code>parentResourceType</code></a>, <a href="#parameter-parentResource"><code>parentResource</code></a>, <a href="#parameter-serialPort"><code>serialPort</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Connect to serial port of the target resource</td>
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
<tr id="parameter-parentResource">
    <td><CopyableCode code="parentResource" /></td>
    <td><code>string</code></td>
    <td>The resource name, or subordinate path, for the parent of the serial port. For example: the name of the virtual machine.</td>
</tr>
<tr id="parameter-parentResourceType">
    <td><CopyableCode code="parentResourceType" /></td>
    <td><code>string</code></td>
    <td>The resource type of the parent resource.  For example: 'virtualMachines' or 'virtualMachineScaleSets'</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-resourceProviderNamespace">
    <td><CopyableCode code="resourceProviderNamespace" /></td>
    <td><code>string</code></td>
    <td>The namespace of the resource provider.</td>
</tr>
<tr id="parameter-serialPort">
    <td><CopyableCode code="serialPort" /></td>
    <td><code>string</code></td>
    <td>The name of the serial port to connect to.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_by_subscriptions', value: 'list_by_subscriptions' }
    ]}
>
<TabItem value="get">

Gets the configured settings for a serial port

```sql
SELECT
properties
FROM azure.serial_console.serial_ports
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceProviderNamespace = '{{ resourceProviderNamespace }}' -- required
AND parentResourceType = '{{ parentResourceType }}' -- required
AND parentResource = '{{ parentResource }}' -- required
AND serialPort = '{{ serialPort }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all of the configured serial ports for a parent resource 

```sql
SELECT
properties
FROM azure.serial_console.serial_ports
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceProviderNamespace = '{{ resourceProviderNamespace }}' -- required
AND parentResourceType = '{{ parentResourceType }}' -- required
AND parentResource = '{{ parentResource }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscriptions">

Handles requests to list all SerialPort resources in a subscription.

```sql
SELECT
properties
FROM azure.serial_console.serial_ports
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Creates or updates a serial port

```sql
INSERT INTO azure.serial_console.serial_ports (
data__properties,
resourceGroupName,
resourceProviderNamespace,
parentResourceType,
parentResource,
serialPort,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ resourceProviderNamespace }}',
'{{ parentResourceType }}',
'{{ parentResource }}',
'{{ serialPort }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: serial_ports
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the serial_ports resource.
    - name: resourceProviderNamespace
      value: string
      description: Required parameter for the serial_ports resource.
    - name: parentResourceType
      value: string
      description: Required parameter for the serial_ports resource.
    - name: parentResource
      value: string
      description: Required parameter for the serial_ports resource.
    - name: serialPort
      value: string
      description: Required parameter for the serial_ports resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the serial_ports resource.
    - name: properties
      value: object
      description: |
        The properties of the serial port.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="connect"
    values={[
        { label: 'connect', value: 'connect' }
    ]}
>
<TabItem value="connect">

Connect to serial port of the target resource

```sql
EXEC azure.serial_console.serial_ports.connect 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@resourceProviderNamespace='{{ resourceProviderNamespace }}' --required, 
@parentResourceType='{{ parentResourceType }}' --required, 
@parentResource='{{ parentResource }}' --required, 
@serialPort='{{ serialPort }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
