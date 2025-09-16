--- 
title: virtual_machines
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_machines
  - lab_services
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

Creates, updates, deletes, gets or lists a <code>virtual_machines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_machines</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.lab_services.virtual_machines" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_lab', value: 'list_by_lab' }
    ]}
>
<TabItem value="get">

The request was successful; response contains the lab virtual machine.

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
    <td>Virtual machine resource properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System data of the Lab virtual machine.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_lab">

The request was successful; response contains all virtual machines for the given lab.

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
    <td>Virtual machine resource properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System data of the Lab virtual machine.</td>
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
    <td></td>
    <td></td>
    <td>Returns the properties for a lab virtual machine.</td>
</tr>
<tr>
    <td><a href="#list_by_lab"><CopyableCode code="list_by_lab" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Returns a list of all virtual machines for a lab.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Action to start a lab virtual machine.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Action to stop a lab virtual machine.</td>
</tr>
<tr>
    <td><a href="#reimage"><CopyableCode code="reimage" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Re-image a lab virtual machine. The virtual machine will be deleted and recreated using the latest published snapshot of the reference environment of the lab.</td>
</tr>
<tr>
    <td><a href="#redeploy"><CopyableCode code="redeploy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Action to redeploy a lab virtual machine to a different compute node. For troubleshooting connectivity.</td>
</tr>
<tr>
    <td><a href="#reset_password"><CopyableCode code="reset_password" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-username"><code>username</code></a>, <a href="#parameter-password"><code>password</code></a></td>
    <td></td>
    <td>Resets a lab virtual machine password.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_lab', value: 'list_by_lab' }
    ]}
>
<TabItem value="get">

Returns the properties for a lab virtual machine.

```sql
SELECT
properties,
systemData
FROM azure.lab_services.virtual_machines
;
```
</TabItem>
<TabItem value="list_by_lab">

Returns a list of all virtual machines for a lab.

```sql
SELECT
properties,
systemData
FROM azure.lab_services.virtual_machines
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="start"
    values={[
        { label: 'start', value: 'start' },
        { label: 'stop', value: 'stop' },
        { label: 'reimage', value: 'reimage' },
        { label: 'redeploy', value: 'redeploy' },
        { label: 'reset_password', value: 'reset_password' }
    ]}
>
<TabItem value="start">

Action to start a lab virtual machine.

```sql
EXEC azure.lab_services.virtual_machines.start 

;
```
</TabItem>
<TabItem value="stop">

Action to stop a lab virtual machine.

```sql
EXEC azure.lab_services.virtual_machines.stop 

;
```
</TabItem>
<TabItem value="reimage">

Re-image a lab virtual machine. The virtual machine will be deleted and recreated using the latest published snapshot of the reference environment of the lab.

```sql
EXEC azure.lab_services.virtual_machines.reimage 

;
```
</TabItem>
<TabItem value="redeploy">

Action to redeploy a lab virtual machine to a different compute node. For troubleshooting connectivity.

```sql
EXEC azure.lab_services.virtual_machines.redeploy 

;
```
</TabItem>
<TabItem value="reset_password">

Resets a lab virtual machine password.

```sql
EXEC azure.lab_services.virtual_machines.reset_password 
@@json=
'{
"username": "{{ username }}", 
"password": "{{ password }}"
}'
;
```
</TabItem>
</Tabs>
