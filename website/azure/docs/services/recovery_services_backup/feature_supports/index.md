--- 
title: feature_supports
hide_title: false
hide_table_of_contents: false
keywords:
  - feature_supports
  - recovery_services_backup
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

Creates, updates, deletes, gets or lists a <code>feature_supports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>feature_supports</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_backup.feature_supports" /></td></tr>
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
    <td><a href="#validate"><CopyableCode code="validate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-azureRegion"><code>azureRegion</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-featureType"><code>featureType</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td></td>
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
<tr id="parameter-azureRegion">
    <td><CopyableCode code="azureRegion" /></td>
    <td><code>string</code></td>
    <td>Azure region to hit Api</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription Id.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client Api Version.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="validate"
    values={[
        { label: 'validate', value: 'validate' }
    ]}
>
<TabItem value="validate">

OK

```sql
EXEC azure.recovery_services_backup.feature_supports.validate 
@azureRegion='{{ azureRegion }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"featureType": "{{ featureType }}"
}'
;
```
</TabItem>
</Tabs>
