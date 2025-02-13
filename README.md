# Purpose
Demo an issue we are seeing a supergraph response where a long value is being swapped in a list.

## Cause
JS max number size is smaller than a Java long

## Credits
This example has been adapted from https://github.com/apollographql/supergraph-demo

# Execute

## Products subgraph
```
cd subgraphs/products
npm install
node products.js
```

## Router
```
rover dev --supergraph-config supergraph.yaml --router-config config.yaml
```

# Query
http://localhost:4000

```
query ExampleQuery {
  allProducts {
    demoList {
      digitId
      stringId
    }
  }
}
```
