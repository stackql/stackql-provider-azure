--- 
title: marketplace_registration_definitions_without_scopes
hide_title: false
hide_table_of_contents: false
keywords:
  - marketplace_registration_definitions_without_scopes
  - managed_services
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

Creates, updates, deletes, gets or lists a <code>marketplace_registration_definitions_without_scopes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>marketplace_registration_definitions_without_scopes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_services.marketplace_registration_definitions_without_scopes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

OK - Returns the details of the marketplace registration definition.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The fully qualified path of the marketplace registration definition.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the marketplace registration definition.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>The details for the Managed Services offer’s plan in Azure Marketplace.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the marketplace registration definition.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the Azure resource (Microsoft.ManagedServices/marketplaceRegistrationDefinitions).</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK - Returns a list of the marketplace registration definitions.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The fully qualified path of the marketplace registration definition.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the marketplace registration definition.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>The details for the Managed Services offer’s plan in Azure Marketplace.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the marketplace registration definition.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the Azure resource (Microsoft.ManagedServices/marketplaceRegistrationDefinitions).</td>
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
    <td><a href="#parameter-marketplaceIdentifier"><code>marketplaceIdentifier</code></a></td>
    <td></td>
    <td>Get the marketplace registration definition for the marketplace identifier.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets a list of the marketplace registration definitions for the marketplace identifier.</td>
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
<tr id="parameter-marketplaceIdentifier">
    <td><CopyableCode code="marketplaceIdentifier" /></td>
    <td><code>string</code></td>
    <td>The Azure Marketplace identifier. Expected formats: &#123;publisher&#125;.&#123;product[-preview]&#125;.&#123;planName&#125;.&#123;version&#125; or &#123;publisher&#125;.&#123;product[-preview]&#125;.&#123;planName&#125; or &#123;publisher&#125;.&#123;product[-preview]&#125; or &#123;publisher&#125;).</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter query parameter to filter managed services resources by.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Get the marketplace registration definition for the marketplace identifier.

```sql
SELECT
id,
name,
plan,
properties,
type
FROM azure.managed_services.marketplace_registration_definitions_without_scopes
WHERE marketplaceIdentifier = '{{ marketplaceIdentifier }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets a list of the marketplace registration definitions for the marketplace identifier.

```sql
SELECT
id,
name,
plan,
properties,
type
FROM azure.managed_services.marketplace_registration_definitions_without_scopes
WHERE $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
