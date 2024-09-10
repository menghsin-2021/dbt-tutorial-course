{% snapshot snapshot__distribution_centers_new %}

{{
    config(
      target_schema='dbt_snapshot',
      unique_key='id',
      strategy='check',
      check_cols=['name', 'latitude', 'longitude']
    )
}}

SELECT * FROM {{ ref('seed_distribution_centers_new') }}

{% endsnapshot %}