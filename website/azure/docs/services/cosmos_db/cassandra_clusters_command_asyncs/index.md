--- 
title: cassandra_clusters_command_asyncs
hide_title: false
hide_table_of_contents: false
keywords:
  - cassandra_clusters_command_asyncs
  - cosmos_db
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

Creates, updates, deletes, gets or lists a <code>cassandra_clusters_command_asyncs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cassandra_clusters_command_asyncs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.cassandra_clusters_command_asyncs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Success. Return a command resource.

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
    <td><CopyableCode code="arguments" /></td>
    <td><code>object</code></td>
    <td>The arguments for the command to be run</td>
</tr>
<tr>
    <td><CopyableCode code="cassandraStopStart" /></td>
    <td><code>boolean</code></td>
    <td>If true, stops cassandra before executing the command and then start it again</td>
</tr>
<tr>
    <td><CopyableCode code="command" /></td>
    <td><code>string</code></td>
    <td>The command which should be run</td>
</tr>
<tr>
    <td><CopyableCode code="commandId" /></td>
    <td><code>string</code></td>
    <td>The unique id of command</td>
</tr>
<tr>
    <td><CopyableCode code="host" /></td>
    <td><code>string</code></td>
    <td>IP address of the cassandra host to run the command on</td>
</tr>
<tr>
    <td><CopyableCode code="isAdmin" /></td>
    <td><code>boolean</code></td>
    <td>Whether command has admin privileges</td>
</tr>
<tr>
    <td><CopyableCode code="outputFile" /></td>
    <td><code>string</code></td>
    <td>The name of the file where the result is written.</td>
</tr>
<tr>
    <td><CopyableCode code="readWrite" /></td>
    <td><code>boolean</code></td>
    <td>If true, allows the command to *write* to the cassandra directory, otherwise read-only.</td>
</tr>
<tr>
    <td><CopyableCode code="result" /></td>
    <td><code>string</code></td>
    <td>Result output of the command.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the command.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-commandId"><code>commandId</code></a></td>
    <td></td>
    <td>Get details about a specified command that was run asynchronously.</td>
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
<tr id="parameter-clusterName">
    <td><CopyableCode code="clusterName" /></td>
    <td><code>string</code></td>
    <td>Managed Cassandra cluster name.</td>
</tr>
<tr id="parameter-commandId">
    <td><CopyableCode code="commandId" /></td>
    <td><code>string</code></td>
    <td>Managed Cassandra cluster command id.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Get details about a specified command that was run asynchronously.

```sql
SELECT
arguments,
cassandraStopStart,
command,
commandId,
host,
isAdmin,
outputFile,
readWrite,
result,
status
FROM azure.cosmos_db.cassandra_clusters_command_asyncs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND commandId = '{{ commandId }}' -- required
;
```
</TabItem>
</Tabs>
