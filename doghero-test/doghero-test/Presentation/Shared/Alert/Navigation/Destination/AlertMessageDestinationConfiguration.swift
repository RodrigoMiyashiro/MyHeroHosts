extension AlertMessageDestination {
    func destinationBuilder(title: String, message: String, buttonTitle: String) -> Destination {
        return AlertMessageTypeDestination(title: title,
                                           message: message,
                                           buttonTitle: buttonTitle)
    }
}
