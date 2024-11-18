
kubectl apply -k "github.com/ertis-research/kafka-ml/kustomize/master"

kubectl apply -k "github.com/ertis-research/kafka-ml/kustomize/local"
kubectl apply -k ”github.com/ertis-research/kafka-ml/kustomize/v1.1“
# Create the namespace first if it doesn't exists
kubectl create namespace kafkaml
kubectl apply -k .


kubectl delete namespace kafkaml
kubectl delete pods --all -A