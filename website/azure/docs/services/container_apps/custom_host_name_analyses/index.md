--- 
title: custom_host_name_analyses
hide_title: false
hide_table_of_contents: false
keywords:
  - custom_host_name_analyses
  - container_apps
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

Creates, updates, deletes, gets or lists a <code>custom_host_name_analyses</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>custom_host_name_analyses</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_apps.custom_host_name_analyses" /></td></tr>
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
    <td><CopyableCode code="aRecords" /></td>
    <td><code>array</code></td>
    <td>A records visible for this hostname.</td>
</tr>
<tr>
    <td><CopyableCode code="alternateCNameRecords" /></td>
    <td><code>array</code></td>
    <td>Alternate CName records visible for this hostname.</td>
</tr>
<tr>
    <td><CopyableCode code="alternateTxtRecords" /></td>
    <td><code>array</code></td>
    <td>Alternate TXT records visible for this hostname.</td>
</tr>
<tr>
    <td><CopyableCode code="cNameRecords" /></td>
    <td><code>array</code></td>
    <td>CName records visible for this hostname.</td>
</tr>
<tr>
    <td><CopyableCode code="conflictWithEnvironmentCustomDomain" /></td>
    <td><code>boolean</code></td>
    <td><code>true</code> if there is a conflict on the Container App's managed environment level custom domain; otherwise, <code>false</code>.</td>
</tr>
<tr>
    <td><CopyableCode code="conflictingContainerAppResourceId" /></td>
    <td><code>string</code></td>
    <td>Name of the conflicting Container App on the Managed Environment if it's within the same subscription.</td>
</tr>
<tr>
    <td><CopyableCode code="customDomainVerificationFailureInfo" /></td>
    <td><code>object</code></td>
    <td>Raw failure information if DNS verification fails.</td>
</tr>
<tr>
    <td><CopyableCode code="customDomainVerificationTest" /></td>
    <td><code>string</code></td>
    <td>DNS verification test result.</td>
</tr>
<tr>
    <td><CopyableCode code="hasConflictOnManagedEnvironment" /></td>
    <td><code>boolean</code></td>
    <td><code>true</code> if there is a conflict on the Container App's managed environment; otherwise, <code>false</code>.</td>
</tr>
<tr>
    <td><CopyableCode code="hostName" /></td>
    <td><code>string</code></td>
    <td>Host name that was analyzed</td>
</tr>
<tr>
    <td><CopyableCode code="isHostnameAlreadyVerified" /></td>
    <td><code>boolean</code></td>
    <td><code>true</code> if hostname is already verified; otherwise, <code>false</code>.</td>
</tr>
<tr>
    <td><CopyableCode code="txtRecords" /></td>
    <td><code>array</code></td>
    <td>TXT records visible for this hostname.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a></td>
    <td><a href="#parameter-customHostname"><code>customHostname</code></a></td>
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
<tr id="parameter-containerAppName">
    <td><CopyableCode code="containerAppName" /></td>
    <td><code>string</code></td>
    <td>Name of the Container App.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-customHostname">
    <td><CopyableCode code="customHostname" /></td>
    <td><code>string</code></td>
    <td>Custom hostname.</td>
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

OK

```sql
SELECT
aRecords,
alternateCNameRecords,
alternateTxtRecords,
cNameRecords,
conflictWithEnvironmentCustomDomain,
conflictingContainerAppResourceId,
customDomainVerificationFailureInfo,
customDomainVerificationTest,
hasConflictOnManagedEnvironment,
hostName,
isHostnameAlreadyVerified,
txtRecords
FROM azure.container_apps.custom_host_name_analyses
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND containerAppName = '{{ containerAppName }}' -- required
AND customHostname = '{{ customHostname }}'
;
```
</TabItem>
</Tabs>
