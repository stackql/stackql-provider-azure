--- 
title: portal_tenants
hide_title: false
hide_table_of_contents: false
keywords:
  - portal_tenants
  - portal_services
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

Creates, updates, deletes, gets or lists a <code>portal_tenants</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>portal_tenants</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.portal_services.portal_tenants" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#compile_file"><CopyableCode code="compile_file" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-contents"><code>contents</code></a></td>
    <td></td>
    <td>compiles a file using inline content.</td>
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

## Lifecycle Methods

<Tabs
    defaultValue="compile_file"
    values={[
        { label: 'compile_file', value: 'compile_file' }
    ]}
>
<TabItem value="compile_file">

compiles a file using inline content.

```sql
EXEC azure.portal_services.portal_tenants.compile_file 
@@json=
'{
"contents": "{{ contents }}", 
"stringSource": "{{ stringSource }}", 
"files": "{{ files }}"
}'
;
```
</TabItem>
</Tabs>
