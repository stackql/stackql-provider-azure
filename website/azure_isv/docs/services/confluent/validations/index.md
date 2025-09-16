--- 
title: validations
hide_title: false
hide_table_of_contents: false
keywords:
  - validations
  - confluent
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>validations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>validations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.confluent.validations" /></td></tr>
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
    <td><a href="#validate_organization"><CopyableCode code="validate_organization" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-organizationName"><code>organizationName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#validate_organization_v2"><CopyableCode code="validate_organization_v2" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-organizationName"><code>organizationName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
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
<tr id="parameter-organizationName">
    <td><CopyableCode code="organizationName" /></td>
    <td><code>string</code></td>
    <td>Organization resource name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Resource group name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="validate_organization"
    values={[
        { label: 'validate_organization', value: 'validate_organization' },
        { label: 'validate_organization_v2', value: 'validate_organization_v2' }
    ]}
>
<TabItem value="validate_organization">

Success

```sql
EXEC azure_isv.confluent.validations.validate_organization 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@organizationName='{{ organizationName }}' --required 
@@json=
'{
"properties": "{{ properties }}", 
"tags": "{{ tags }}", 
"location": "{{ location }}"
}'
;
```
</TabItem>
<TabItem value="validate_organization_v2">

Success

```sql
EXEC azure_isv.confluent.validations.validate_organization_v2 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@organizationName='{{ organizationName }}' --required 
@@json=
'{
"properties": "{{ properties }}", 
"tags": "{{ tags }}", 
"location": "{{ location }}"
}'
;
```
</TabItem>
</Tabs>
