provider "kind" {}

resource "kind" "my-cluster" {
    name = "test-cluster"
    node_image = "kindest/node:v1.15.3"
    kind_config =<<KIONF
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
- role: worker
KIONF
}
