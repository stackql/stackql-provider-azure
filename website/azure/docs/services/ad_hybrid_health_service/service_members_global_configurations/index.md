--- 
title: service_members_global_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - service_members_global_configurations
  - ad_hybrid_health_service
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

Creates, updates, deletes, gets or lists a <code>service_members_global_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>service_members_global_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.service_members_global_configurations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

The list of global configurations.

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
    <td><CopyableCode code="featureSet" /></td>
    <td><code>array</code></td>
    <td>The list of additional feature sets.</td>
</tr>
<tr>
    <td><CopyableCode code="numSavedPwdEvent" /></td>
    <td><code>integer</code></td>
    <td>The number of saved password events.</td>
</tr>
<tr>
    <td><CopyableCode code="passwordSyncEnabled" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if password sync is enabled or not.</td>
</tr>
<tr>
    <td><CopyableCode code="schemaXml" /></td>
    <td><code>string</code></td>
    <td>The schema for the configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="version" /></td>
    <td><code>integer</code></td>
    <td>The version for the global configuration.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-serviceMemberId"><code>serviceMemberId</code></a></td>
    <td></td>
    <td>Gets the global configuration.</td>
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
<tr id="parameter-serviceMemberId">
    <td><CopyableCode code="serviceMemberId" /></td>
    <td><code>string</code></td>
    <td>The server id.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the service.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Gets the global configuration.

```sql
SELECT
featureSet,
numSavedPwdEvent,
passwordSyncEnabled,
schemaXml,
version
FROM azure.ad_hybrid_health_service.service_members_global_configurations
WHERE serviceName = '{{ serviceName }}' -- required
AND serviceMemberId = '{{ serviceMemberId }}' -- required
;
```
</TabItem>
</Tabs>
