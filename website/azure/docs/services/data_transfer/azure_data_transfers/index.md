--- 
title: azure_data_transfers
hide_title: false
hide_table_of_contents: false
keywords:
  - azure_data_transfers
  - data_transfer
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

Creates, updates, deletes, gets or lists an <code>azure_data_transfers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>azure_data_transfers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_transfer.azure_data_transfers" /></td></tr>
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
    <td><a href="#validate_schema"><CopyableCode code="validate_schema" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Validates a schema for Azure Data Transfer.</td>
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
    defaultValue="validate_schema"
    values={[
        { label: 'validate_schema', value: 'validate_schema' }
    ]}
>
<TabItem value="validate_schema">

Validates a schema for Azure Data Transfer.

```sql
EXEC azure.data_transfer.azure_data_transfers.validate_schema 
@@json=
'{
"id": "{{ id }}", 
"connectionId": "{{ connectionId }}", 
"status": "{{ status }}", 
"name": "{{ name }}", 
"content": "{{ content }}", 
"direction": "{{ direction }}"
}'
;
```
</TabItem>
</Tabs>
