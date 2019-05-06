FROM microsoft/aspnetcore-build:2.2
WORKDIR /app
COPY . .
RUN dotnet build -c Release
ENTRYPOINT ["dotnet", "run", "--no-launch-profile" ]
