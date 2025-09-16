--- 
title: web_app_discovery_site_data_sources_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - web_app_discovery_site_data_sources_controllers
  - migrate
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

Creates, updates, deletes, gets or lists a <code>web_app_discovery_site_data_sources_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>web_app_discovery_site_data_sources_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.web_app_discovery_site_data_sources_controllers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_web_app_site', value: 'list_by_web_app_site' }
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
<TabItem value="list_by_web_app_site">

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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-webAppSiteName"><code>webAppSiteName</code></a>, <a href="#parameter-discoverySiteDataSourceName"><code>discoverySiteDataSourceName</code></a></td>
    <td></td>
    <td>Method to get a Web app data source in site.</td>
</tr>
<tr>
    <td><a href="#list_by_web_app_site"><CopyableCode code="list_by_web_app_site" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-webAppSiteName"><code>webAppSiteName</code></a></td>
    <td></td>
    <td>Method to get all Web app data sources in site.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-webAppSiteName"><code>webAppSiteName</code></a>, <a href="#parameter-discoverySiteDataSourceName"><code>discoverySiteDataSourceName</code></a></td>
    <td></td>
    <td>Method to create or update a Web app data source in site.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-webAppSiteName"><code>webAppSiteName</code></a>, <a href="#parameter-discoverySiteDataSourceName"><code>discoverySiteDataSourceName</code></a></td>
    <td></td>
    <td>Method to delete a Web app data source in site.</td>
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
<tr id="parameter-discoverySiteDataSourceName">
    <td><CopyableCode code="discoverySiteDataSourceName" /></td>
    <td><code>string</code></td>
    <td>Data Source ARM name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-siteName">
    <td><CopyableCode code="siteName" /></td>
    <td><code>string</code></td>
    <td>Site name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-webAppSiteName">
    <td><CopyableCode code="webAppSiteName" /></td>
    <td><code>string</code></td>
    <td>Web app site name.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_web_app_site', value: 'list_by_web_app_site' }
    ]}
>
<TabItem value="get">

Method to get a Web app data source in site.

```sql
SELECT
properties
FROM azure.migrate.web_app_discovery_site_data_sources_controllers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND siteName = '{{ siteName }}' -- required
AND webAppSiteName = '{{ webAppSiteName }}' -- required
AND discoverySiteDataSourceName = '{{ discoverySiteDataSourceName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_web_app_site">

Method to get all Web app data sources in site.

```sql
SELECT
properties
FROM azure.migrate.web_app_discovery_site_data_sources_controllers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND siteName = '{{ siteName }}' -- required
AND webAppSiteName = '{{ webAppSiteName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Method to create or update a Web app data source in site.

```sql
INSERT INTO azure.migrate.web_app_discovery_site_data_sources_controllers (
data__properties,
subscriptionId,
resourceGroupName,
siteName,
webAppSiteName,
discoverySiteDataSourceName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ siteName }}',
'{{ webAppSiteName }}',
'{{ discoverySiteDataSourceName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: web_app_discovery_site_data_sources_controllers
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the web_app_discovery_site_data_sources_controllers resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the web_app_discovery_site_data_sources_controllers resource.
    - name: siteName
      value: string
      description: Required parameter for the web_app_discovery_site_data_sources_controllers resource.
    - name: webAppSiteName
      value: string
      description: Required parameter for the web_app_discovery_site_data_sources_controllers resource.
    - name: discoverySiteDataSourceName
      value: string
      description: Required parameter for the web_app_discovery_site_data_sources_controllers resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
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

Method to delete a Web app data source in site.

```sql
DELETE FROM azure.migrate.web_app_discovery_site_data_sources_controllers
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND siteName = '{{ siteName }}' --required
AND webAppSiteName = '{{ webAppSiteName }}' --required
AND discoverySiteDataSourceName = '{{ discoverySiteDataSourceName }}' --required
;
```
</TabItem>
</Tabs>
