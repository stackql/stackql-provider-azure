--- 
title: discovery_solution_nlps
hide_title: false
hide_table_of_contents: false
keywords:
  - discovery_solution_nlps
  - help
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>discovery_solution_nlps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>discovery_solution_nlps</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.help.discovery_solution_nlps" /></td></tr>
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
    <td><a href="#discover_solutions"><CopyableCode code="discover_solutions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-issueSummary"><code>issueSummary</code></a></td>
    <td></td>
    <td>Search for relevant Azure Diagnostics, Solutions and Troubleshooters using a natural language issue summary.</td>
</tr>
<tr>
    <td><a href="#discover_solutions_by_subscription"><CopyableCode code="discover_solutions_by_subscription" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-issueSummary"><code>issueSummary</code></a></td>
    <td></td>
    <td>Search for relevant Azure Diagnostics, Solutions and Troubleshooters using a natural language issue summary and subscription.</td>
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
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="discover_solutions"
    values={[
        { label: 'discover_solutions', value: 'discover_solutions' },
        { label: 'discover_solutions_by_subscription', value: 'discover_solutions_by_subscription' }
    ]}
>
<TabItem value="discover_solutions">

Search for relevant Azure Diagnostics, Solutions and Troubleshooters using a natural language issue summary.

```sql
EXEC azure_extras.help.discovery_solution_nlps.discover_solutions 
@@json=
'{
"issueSummary": "{{ issueSummary }}", 
"resourceId": "{{ resourceId }}", 
"serviceId": "{{ serviceId }}", 
"additionalContext": "{{ additionalContext }}"
}'
;
```
</TabItem>
<TabItem value="discover_solutions_by_subscription">

Search for relevant Azure Diagnostics, Solutions and Troubleshooters using a natural language issue summary and subscription.

```sql
EXEC azure_extras.help.discovery_solution_nlps.discover_solutions_by_subscription 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"issueSummary": "{{ issueSummary }}", 
"resourceId": "{{ resourceId }}", 
"serviceId": "{{ serviceId }}", 
"additionalContext": "{{ additionalContext }}"
}'
;
```
</TabItem>
</Tabs>
