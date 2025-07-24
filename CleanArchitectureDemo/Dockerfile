# You are already inside CleanArchitectureDemo folder

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

COPY CleanArchitectureDemo.csproj ./
RUN dotnet restore "CleanArchitectureDemo.csproj"

COPY . .
RUN dotnet publish "CleanArchitectureDemo.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /app/publish .
EXPOSE 80
ENTRYPOINT ["dotnet", "CleanArchitectureDemo.dll"]
