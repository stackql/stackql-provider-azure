--- 
title: service_classifications
hide_title: false
hide_table_of_contents: false
keywords:
  - service_classifications
  - support
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

Creates, updates, deletes, gets or lists a <code>service_classifications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>service_classifications</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.support.service_classifications" /></td></tr>
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
    <td><a href="#classify_services"><CopyableCode code="classify_services" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Classify the list of right Azure services.</td>
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
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure subscription Id.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="classify_services"
    values={[
        { label: 'classify_services', value: 'classify_services' }
    ]}
>
<TabItem value="classify_services">

Classify the list of right Azure services.

```sql
EXEC azure.support.service_classifications.classify_services 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"issueSummary": "{{ issueSummary }}", 
"resourceId": "{{ resourceId }}", 
"additionalContext": "{{ additionalContext }}"
}'
;
```
</TabItem>
</Tabs>
