--- 
title: problem_classifications_no_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - problem_classifications_no_subscriptions
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

Creates, updates, deletes, gets or lists a <code>problem_classifications_no_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>problem_classifications_no_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.support.problem_classifications_no_subscriptions" /></td></tr>
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
    <td><a href="#classify_problems"><CopyableCode code="classify_problems" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-problemServiceName"><code>problemServiceName</code></a>, <a href="#parameter-issueSummary"><code>issueSummary</code></a></td>
    <td></td>
    <td>Classify the right problem classifications (categories) available for a specific Azure service. </td>
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
<tr id="parameter-problemServiceName">
    <td><CopyableCode code="problemServiceName" /></td>
    <td><code>string</code></td>
    <td>Name of the Azure service for which the problem classifications need to be retrieved.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="classify_problems"
    values={[
        { label: 'classify_problems', value: 'classify_problems' }
    ]}
>
<TabItem value="classify_problems">

Classify the right problem classifications (categories) available for a specific Azure service. 

```sql
EXEC azure.support.problem_classifications_no_subscriptions.classify_problems 
@problemServiceName='{{ problemServiceName }}' --required 
@@json=
'{
"issueSummary": "{{ issueSummary }}", 
"resourceId": "{{ resourceId }}"
}'
;
```
</TabItem>
</Tabs>
