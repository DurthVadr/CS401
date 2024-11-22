import flwr as fl
import tensorflow as tf

fl.server.start_server(server_address="0.0.0.0:8080", config=fl.server.ServerConfig(num_rounds=3), strategy=fl.server.strategy.FedMedian())
