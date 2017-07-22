let properties = {
  username: {
    type: String,
    required: true,
  },
};

loopback.Model.extend('User', properties, {});
