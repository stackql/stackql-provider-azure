--- 
title: virtual_network_links
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_network_links
  - dns_resolver
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

Creates, updates, deletes, gets or lists a <code>virtual_network_links</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_network_links</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dns_resolver.virtual_network_links" /></td></tr>
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

The virtual network link to DNS forwarding ruleset was found.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>ETag of the virtual network link.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the virtual network link.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

List of virtual network links to a DNS forwarding ruleset.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>ETag of the virtual network link.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the virtual network link.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dnsForwardingRulesetName"><code>dnsForwardingRulesetName</code></a>, <a href="#parameter-virtualNetworkLinkName"><code>virtualNetworkLinkName</code></a></td>
    <td></td>
    <td>Gets properties of a virtual network link to a DNS forwarding ruleset.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dnsForwardingRulesetName"><code>dnsForwardingRulesetName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a></td>
    <td>Lists virtual network links to a DNS forwarding ruleset.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dnsForwardingRulesetName"><code>dnsForwardingRulesetName</code></a>, <a href="#parameter-virtualNetworkLinkName"><code>virtualNetworkLinkName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-If-None-Match"><code>If-None-Match</code></a></td>
    <td>Creates or updates a virtual network link to a DNS forwarding ruleset.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dnsForwardingRulesetName"><code>dnsForwardingRulesetName</code></a>, <a href="#parameter-virtualNetworkLinkName"><code>virtualNetworkLinkName</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Updates a virtual network link to a DNS forwarding ruleset.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dnsForwardingRulesetName"><code>dnsForwardingRulesetName</code></a>, <a href="#parameter-virtualNetworkLinkName"><code>virtualNetworkLinkName</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Deletes a virtual network link to a DNS forwarding ruleset. WARNING: This operation cannot be undone.</td>
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
<tr id="parameter-dnsForwardingRulesetName">
    <td><CopyableCode code="dnsForwardingRulesetName" /></td>
    <td><code>string</code></td>
    <td>The name of the DNS forwarding ruleset.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-virtualNetworkLinkName">
    <td><CopyableCode code="virtualNetworkLinkName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual network link.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of results to return. If not specified, returns up to 100 results.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the resource. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting any concurrent changes.</td>
</tr>
<tr id="parameter-If-None-Match">
    <td><CopyableCode code="If-None-Match" /></td>
    <td><code>string</code></td>
    <td>Set to '*' to allow a new resource to be created, but to prevent updating an existing resource. Other values will be ignored.</td>
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

Gets properties of a virtual network link to a DNS forwarding ruleset.

```sql
SELECT
etag,
properties,
systemData
FROM azure.dns_resolver.virtual_network_links
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dnsForwardingRulesetName = '{{ dnsForwardingRulesetName }}' -- required
AND virtualNetworkLinkName = '{{ virtualNetworkLinkName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists virtual network links to a DNS forwarding ruleset.

```sql
SELECT
etag,
properties,
systemData
FROM azure.dns_resolver.virtual_network_links
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dnsForwardingRulesetName = '{{ dnsForwardingRulesetName }}' -- required
AND $top = '{{ $top }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Creates or updates a virtual network link to a DNS forwarding ruleset.

```sql
INSERT INTO azure.dns_resolver.virtual_network_links (
data__properties,
subscriptionId,
resourceGroupName,
dnsForwardingRulesetName,
virtualNetworkLinkName,
If-Match,
If-None-Match
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ dnsForwardingRulesetName }}',
'{{ virtualNetworkLinkName }}',
'{{ If-Match }}',
'{{ If-None-Match }}'
RETURNING
etag,
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: virtual_network_links
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the virtual_network_links resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the virtual_network_links resource.
    - name: dnsForwardingRulesetName
      value: string
      description: Required parameter for the virtual_network_links resource.
    - name: virtualNetworkLinkName
      value: string
      description: Required parameter for the virtual_network_links resource.
    - name: properties
      value: object
      description: |
        Properties of the virtual network link.
    - name: If-Match
      value: string
      description: ETag of the resource. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting any concurrent changes.
    - name: If-None-Match
      value: string
      description: Set to '*' to allow a new resource to be created, but to prevent updating an existing resource. Other values will be ignored.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Updates a virtual network link to a DNS forwarding ruleset.

```sql
UPDATE azure.dns_resolver.virtual_network_links
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dnsForwardingRulesetName = '{{ dnsForwardingRulesetName }}' --required
AND virtualNetworkLinkName = '{{ virtualNetworkLinkName }}' --required
AND If-Match = '{{ If-Match}}'
RETURNING
etag,
properties,
systemData;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Deletes a virtual network link to a DNS forwarding ruleset. WARNING: This operation cannot be undone.

```sql
DELETE FROM azure.dns_resolver.virtual_network_links
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dnsForwardingRulesetName = '{{ dnsForwardingRulesetName }}' --required
AND virtualNetworkLinkName = '{{ virtualNetworkLinkName }}' --required
AND If-Match = '{{ If-Match }}'
;
```
</TabItem>
</Tabs>
