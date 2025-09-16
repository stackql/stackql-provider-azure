--- 
title: business_process_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - business_process_versions
  - integration_environment
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

Creates, updates, deletes, gets or lists a <code>business_process_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>business_process_versions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.integration_environment.business_process_versions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_business_process', value: 'list_by_business_process' }
    ]}
>
<TabItem value="get">

ARM operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_business_process">

ARM operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-spaceName"><code>spaceName</code></a>, <a href="#parameter-applicationName"><code>applicationName</code></a>, <a href="#parameter-businessProcessName"><code>businessProcessName</code></a>, <a href="#parameter-businessProcessVersion"><code>businessProcessVersion</code></a></td>
    <td></td>
    <td>Get a BusinessProcessVersion</td>
</tr>
<tr>
    <td><a href="#list_by_business_process"><CopyableCode code="list_by_business_process" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-spaceName"><code>spaceName</code></a>, <a href="#parameter-applicationName"><code>applicationName</code></a>, <a href="#parameter-businessProcessName"><code>businessProcessName</code></a></td>
    <td><a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-maxpagesize"><code>maxpagesize</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-select"><code>select</code></a>, <a href="#parameter-expand"><code>expand</code></a>, <a href="#parameter-orderby"><code>orderby</code></a></td>
    <td>List BusinessProcessVersion resources by BusinessProcess</td>
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
<tr id="parameter-applicationName">
    <td><CopyableCode code="applicationName" /></td>
    <td><code>string</code></td>
    <td>The name of the Application</td>
</tr>
<tr id="parameter-businessProcessName">
    <td><CopyableCode code="businessProcessName" /></td>
    <td><code>string</code></td>
    <td>The name of the business process</td>
</tr>
<tr id="parameter-businessProcessVersion">
    <td><CopyableCode code="businessProcessVersion" /></td>
    <td><code>string</code></td>
    <td>The version of the business process</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-spaceName">
    <td><CopyableCode code="spaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the space</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>array</code></td>
    <td>Expand the indicated resources into the response.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>Filter the result list using the given expression.</td>
</tr>
<tr id="parameter-maxpagesize">
    <td><CopyableCode code="maxpagesize" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of result items per page.</td>
</tr>
<tr id="parameter-orderby">
    <td><CopyableCode code="orderby" /></td>
    <td><code>array</code></td>
    <td>Expressions that specify the order of returned results.</td>
</tr>
<tr id="parameter-select">
    <td><CopyableCode code="select" /></td>
    <td><code>array</code></td>
    <td>Select the specified fields to be included in the response.</td>
</tr>
<tr id="parameter-skip">
    <td><CopyableCode code="skip" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of result items to skip.</td>
</tr>
<tr id="parameter-top">
    <td><CopyableCode code="top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of result items to return.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_business_process', value: 'list_by_business_process' }
    ]}
>
<TabItem value="get">

Get a BusinessProcessVersion

```sql
SELECT
properties
FROM azure.integration_environment.business_process_versions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND spaceName = '{{ spaceName }}' -- required
AND applicationName = '{{ applicationName }}' -- required
AND businessProcessName = '{{ businessProcessName }}' -- required
AND businessProcessVersion = '{{ businessProcessVersion }}' -- required
;
```
</TabItem>
<TabItem value="list_by_business_process">

List BusinessProcessVersion resources by BusinessProcess

```sql
SELECT
properties
FROM azure.integration_environment.business_process_versions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND spaceName = '{{ spaceName }}' -- required
AND applicationName = '{{ applicationName }}' -- required
AND businessProcessName = '{{ businessProcessName }}' -- required
AND top = '{{ top }}'
AND skip = '{{ skip }}'
AND maxpagesize = '{{ maxpagesize }}'
AND filter = '{{ filter }}'
AND select = '{{ select }}'
AND expand = '{{ expand }}'
AND orderby = '{{ orderby }}'
;
```
</TabItem>
</Tabs>
