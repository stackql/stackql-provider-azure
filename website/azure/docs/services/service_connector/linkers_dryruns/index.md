--- 
title: linkers_dryruns
hide_title: false
hide_table_of_contents: false
keywords:
  - linkers_dryruns
  - service_connector
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

Creates, updates, deletes, gets or lists a <code>linkers_dryruns</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>linkers_dryruns</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_connector.linkers_dryruns" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the dryrun job.</td>
</tr>
</tbody>
</table>
</TabItem>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the dryrun job.</td>
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
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-dryrunName"><code>dryrunName</code></a></td>
    <td></td>
    <td>get a dryrun job</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>list dryrun jobs</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-dryrunName"><code>dryrunName</code></a></td>
    <td></td>
    <td>create a dryrun job to do necessary check before actual creation</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-dryrunName"><code>dryrunName</code></a></td>
    <td></td>
    <td>add a dryrun job to do necessary check before actual creation</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-dryrunName"><code>dryrunName</code></a></td>
    <td></td>
    <td>delete a dryrun job</td>
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
<tr id="parameter-dryrunName">
    <td><CopyableCode code="dryrunName" /></td>
    <td><code>string</code></td>
    <td>The name of dryrun.</td>
</tr>
<tr id="parameter-resourceUri">
    <td><CopyableCode code="resourceUri" /></td>
    <td><code>string</code></td>
    <td>The fully qualified Azure Resource manager identifier of the resource to be connected.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

get a dryrun job

```sql
SELECT
properties
FROM azure.service_connector.linkers_dryruns
WHERE resourceUri = '{{ resourceUri }}' -- required
AND dryrunName = '{{ dryrunName }}' -- required
;
```
</TabItem>
<TabItem value="list">

list dryrun jobs

```sql
SELECT
properties
FROM azure.service_connector.linkers_dryruns
WHERE resourceUri = '{{ resourceUri }}' -- required
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

create a dryrun job to do necessary check before actual creation

```sql
INSERT INTO azure.service_connector.linkers_dryruns (
data__properties,
resourceUri,
dryrunName
)
SELECT 
'{{ properties }}',
'{{ resourceUri }}',
'{{ dryrunName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: linkers_dryruns
  props:
    - name: resourceUri
      value: string
      description: Required parameter for the linkers_dryruns resource.
    - name: dryrunName
      value: string
      description: Required parameter for the linkers_dryruns resource.
    - name: properties
      value: object
      description: |
        The properties of the dryrun job.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

add a dryrun job to do necessary check before actual creation

```sql
UPDATE azure.service_connector.linkers_dryruns
SET 
data__properties = '{{ properties }}'
WHERE 
resourceUri = '{{ resourceUri }}' --required
AND dryrunName = '{{ dryrunName }}' --required
RETURNING
properties;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

delete a dryrun job

```sql
DELETE FROM azure.service_connector.linkers_dryruns
WHERE resourceUri = '{{ resourceUri }}' --required
AND dryrunName = '{{ dryrunName }}' --required
;
```
</TabItem>
</Tabs>
