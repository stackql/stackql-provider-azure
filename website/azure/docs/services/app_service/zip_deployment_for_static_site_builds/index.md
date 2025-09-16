--- 
title: zip_deployment_for_static_site_builds
hide_title: false
hide_table_of_contents: false
keywords:
  - zip_deployment_for_static_site_builds
  - app_service
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

Creates, updates, deletes, gets or lists a <code>zip_deployment_for_static_site_builds</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>zip_deployment_for_static_site_builds</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.zip_deployment_for_static_site_builds" /></td></tr>
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
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Deploys zipped content to a specific environment of a static site.</td>
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
<tr id="parameter-environmentName">
    <td><CopyableCode code="environmentName" /></td>
    <td><code>string</code></td>
    <td>Name of the environment.</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the static site.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group to which the resource belongs.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Description for Deploys zipped content to a specific environment of a static site.

```sql
INSERT INTO azure.app_service.zip_deployment_for_static_site_builds (
data__kind,
data__properties,
resourceGroupName,
name,
environmentName,
subscriptionId
)
SELECT 
'{{ kind }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ name }}',
'{{ environmentName }}',
'{{ subscriptionId }}'
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: zip_deployment_for_static_site_builds
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the zip_deployment_for_static_site_builds resource.
    - name: name
      value: string
      description: Required parameter for the zip_deployment_for_static_site_builds resource.
    - name: environmentName
      value: string
      description: Required parameter for the zip_deployment_for_static_site_builds resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the zip_deployment_for_static_site_builds resource.
    - name: kind
      value: string
      description: |
        Kind of resource.
    - name: properties
      value: object
      description: |
        Core resource properties
```
</TabItem>
</Tabs>
