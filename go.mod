module knative.dev/eventing-autoscaler-keda

go 1.15

require (
	github.com/kedacore/keda/v2 v2.0.1-0.20201118092520-5c1257d8c726
	go.uber.org/zap v1.16.0
	k8s.io/api v0.19.7
	k8s.io/apiextensions-apiserver v0.19.7
	k8s.io/apimachinery v0.19.7
	k8s.io/client-go v12.0.0+incompatible
	k8s.io/code-generator v0.19.7
	knative.dev/eventing v0.20.1-0.20210127134430-ea452b5b6655
	knative.dev/eventing-awssqs v0.20.1-0.20210128095331-4c73bf15f7c8
	knative.dev/eventing-kafka v0.19.1-0.20210127150130-58becadbec46
	knative.dev/eventing-redis v0.20.1-0.20210127135630-169b2ed5f73f
	knative.dev/hack v0.0.0-20210120165453-8d623a0af457
	knative.dev/pkg v0.0.0-20210127163530-0d31134d5f4e
)

// For some reason this is required. Specifying v0.19.7 above
// followed by go mod tidy changes it to v9.0.0+incompatible.
// Adding this here fixes it.
// https://github.com/knative-sandbox/eventing-awssqs/issues/36
replace k8s.io/client-go => k8s.io/client-go v0.19.7
